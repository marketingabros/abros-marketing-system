#!/usr/bin/env ruby
# encoding: UTF-8

require "json"
require "open3"
require "tempfile"
require "yaml"

SOCIAL_ROOT = File.expand_path("..", __dir__)
REPO_ROOT = File.expand_path("../..", SOCIAL_ROOT)

class EvalRun
  attr_reader :passed, :total, :failures

  def initialize
    @passed = 0
    @total = 0
    @failures = []
  end

  def check(label, condition)
    @total += 1
    if condition
      @passed += 1
    else
      @failures << label
    end
  end

  def accuracy
    return 0.0 if total.zero?

    (passed.fdiv(total) * 100).round(1)
  end
end

def load_yaml(path)
  YAML.safe_load(File.read(path), permitted_classes: [], aliases: false)
end

def average(evaluations, dimension)
  values = evaluations.map { |entry| entry.fetch("scores")[dimension] }.compact
  return nil if values.empty?

  (values.sum.fdiv(values.length)).round(2)
end

def run_router(request)
  Tempfile.create(["social-route", ".json"]) do |file|
    file.write(JSON.generate(request))
    file.flush
    output, error, status = Open3.capture3(
      "ruby",
      File.join(SOCIAL_ROOT, "scripts", "route_task.rb"),
      file.path
    )
    raise "Router failed: #{error}" unless status.success?

    JSON.parse(output)
  end
end

run = EvalRun.new

required_files = %w[
  AGENT.md
  agent.json
  CONTEXT_ROUTING.md
  AUTONOMY.md
  MEMORY_POLICY.md
  OUTPUT_CONTRACTS.md
  routing.yaml
  schemas/agent-task-plan.schema.json
  schemas/agent-result.schema.json
  schemas/agent-learning-proposal.schema.json
  scripts/route_task.rb
  tests/routing_cases.yaml
  evals/forward_test_inputs.yaml
  evals/forward_test_outputs.yaml
  evals/forward_test_evaluations.yaml
].freeze
required_files.each do |relative_path|
  run.check("required file exists: #{relative_path}", File.file?(File.join(SOCIAL_ROOT, relative_path)))
end

agent = JSON.parse(File.read(File.join(SOCIAL_ROOT, "agent.json")))
run.check("agent remains persistent", agent["mode"] == "persistent")
run.check("agent cannot write Brand OS", agent.fetch("forbidden_writes").include?("brands/{brand_id}/brand-os"))
run.check("agent cannot write Social Skills", agent.fetch("forbidden_writes").include?("skills/social"))
run.check("agent cannot act on external platforms", agent.fetch("forbidden_writes").include?("external-platforms"))
run.check("publishing requires approval", agent.fetch("human_approval_required_for").include?("publishing"))

schema_files = Dir[File.join(SOCIAL_ROOT, "schemas", "*.json")].sort
schemas = schema_files.map { |path| JSON.parse(File.read(path)) }
run.check("three machine-readable contracts parse", schemas.length == 3)
schemas.each do |schema|
  run.check("#{schema.fetch('title')} rejects undeclared fields", schema["additionalProperties"] == false)
  run.check("#{schema.fetch('title')} declares required fields", schema.fetch("required").any?)
end

routing = load_yaml(File.join(SOCIAL_ROOT, "routing.yaml"))
expected_task_types = %w[
  SOCIAL_STRATEGY PERFORMANCE_REVIEW CONTENT_PORTFOLIO WEEKLY_CONTENT_PLAN
  CAMPAIGN_PLAN CONTENT_CONCEPT CREATIVE_CRITIQUE REEL_BRIEF CAROUSEL_BRIEF
  STORY_SEQUENCE MARKET_RESEARCH COMPETITOR_ANALYSIS COMMUNITY_RECOMMENDATION
  POST_PERFORMANCE_REVIEW LEARNING_PROPOSAL
]
run.check("all 15 approved task types are registered", routing.fetch("task_types").keys.sort == expected_task_types.sort)
run.check("only the eight approved Skills are registered", routing.fetch("skills").length == 8)
run.check("Instagram knowledge is referenced, not embedded", routing.dig("platforms", "instagram", "current_knowledge") == "skills/social/research/INSTAGRAM_CURRENT_KNOWLEDGE.md")
run.check("restaurant vertical is an optional module", routing.dig("verticals", "restaurant", "path") == "skills/social/modules/vertical/restaurant")

core_text_files = %w[AGENT.md AUTONOMY.md CONTEXT_ROUTING.md MEMORY_POLICY.md OUTPUT_CONTRACTS.md]
core_text = core_text_files.map { |path| File.read(File.join(SOCIAL_ROOT, path), encoding: "UTF-8") }.join("\n")
run.check("agent core contains no Monzu knowledge", !core_text.match?(/Monz[uù]|Piazza|Cellar/i))
run.check("agent core does not copy volatile Instagram facts", !core_text.match?(/follower count|posting frequenc|algorithm hack|reels per week/i))

routing_cases = load_yaml(File.join(SOCIAL_ROOT, "tests", "routing_cases.yaml")).fetch("cases")
routing_assertions = EvalRun.new
routing_cases.each do |test_case|
  plan = run_router(test_case.fetch("request"))
  expected = test_case.fetch("expect")
  routing_assertions.check("#{test_case['id']}: status", plan["proceed_status"] == expected["status"])
  routing_assertions.check("#{test_case['id']}: skills", plan["selected_skills"] == expected["skills"])
  routing_assertions.check("#{test_case['id']}: platform references", plan["platform_references"] == expected["platform_references"])
  routing_assertions.check("#{test_case['id']}: business model", plan["business_model"] == expected["business_model"])
  routing_assertions.check("#{test_case['id']}: vertical", plan["vertical_module"] == expected["vertical_module"])
  routing_assertions.check("#{test_case['id']}: brand sections", plan["selected_brand_os_sections"] == expected["brand_sections"])
  Array(expected["missing_contains"]).each do |missing|
    routing_assertions.check("#{test_case['id']}: missing #{missing}", plan["missing_information"].include?(missing))
  end
  serialised = JSON.generate(plan)
  Array(expected["exclude"]).each do |excluded|
    routing_assertions.check("#{test_case['id']}: excludes #{excluded}", !serialised.include?(excluded))
  end
end
run.check("selective loading suite passes", routing_assertions.failures.empty?)

forward_inputs = load_yaml(File.join(SOCIAL_ROOT, "evals", "forward_test_inputs.yaml"))
forward_outputs = load_yaml(File.join(SOCIAL_ROOT, "evals", "forward_test_outputs.yaml"))
forward_scores = load_yaml(File.join(SOCIAL_ROOT, "evals", "forward_test_evaluations.yaml"))
input_cases = forward_inputs.fetch("cases")
outputs = forward_outputs.fetch("outputs").to_h { |entry| [entry.fetch("id"), entry] }
evaluations = forward_scores.fetch("evaluations")
evaluation_ids = evaluations.map { |entry| entry.fetch("id") }
input_ids = input_cases.map { |entry| entry.fetch("id") }
run.check("ten required forward tests exist", input_ids.length == 10)
run.check("every test has exactly one output", outputs.keys.sort == input_ids.sort)
run.check("every test has exactly one independent evaluation", evaluation_ids.sort == input_ids.sort)
input_cases.each do |test_case|
  tags = Array(outputs.fetch(test_case.fetch("id"))["tags"])
  Array(test_case["success_conditions"]).each do |condition|
    run.check("#{test_case['id']}: success condition #{condition}", tags.include?(condition))
  end
end

evidence_classes = %w[FACT MANAGEMENT_RULE DATA_SUPPORTED_CONCLUSION HEURISTIC HYPOTHESIS CREATIVE_RECOMMENDATION MISSING_INFORMATION]
used_classes = forward_outputs.to_s.scan(/(?:evidence_class|support)"?=>"?([A-Z_]+)/).flatten
run.check("simulations use only approved evidence classes", (used_classes - evidence_classes).empty?)
run.check("feedback remains proposed only", outputs.dig("FT10_MANAGEMENT_FEEDBACK", "proposed_observation", "status") == "PROPOSED_ONLY")

critical_violations = forward_scores.fetch("critical_violations")
run.check("zero critical forward-test violations", critical_violations.values.all?(&:zero?))

dimensions = %w[strategic_quality commercial_relevance brand_alignment creative_quality diagnostic_quality context_selection factual_reliability uncertainty_handling business_model_fit repetition_control]
averages = dimensions.to_h { |dimension| [dimension, average(evaluations, dimension)] }
acceptance = {
  "selective_loading_accuracy" => routing_assertions.accuracy >= 95.0,
  "strategic_quality" => averages.fetch("strategic_quality") >= 8.5,
  "commercial_relevance" => averages.fetch("commercial_relevance") >= 8.5,
  "creative_quality" => averages.fetch("creative_quality") >= 8.0,
  "diagnostic_quality" => averages.fetch("diagnostic_quality") >= 8.5,
  "factual_reliability" => averages.fetch("factual_reliability") >= 9.0,
  "zero_critical_violations" => critical_violations.values.all?(&:zero?)
}
acceptance.each { |label, met| run.check("acceptance threshold: #{label}", met) }

status = run.failures.empty? ? "READY FOR REAL MANAGEMENT TEST" : "NOT READY"
report = {
  "suite" => "SOCIAL_AGENT_FORWARD_TEST",
  "status" => status,
  "assertions" => {"passed" => run.passed, "total" => run.total, "accuracy_percent" => run.accuracy},
  "selective_loading" => {"passed" => routing_assertions.passed, "total" => routing_assertions.total, "accuracy_percent" => routing_assertions.accuracy, "failures" => routing_assertions.failures},
  "forward_test_averages" => averages,
  "critical_violations" => critical_violations,
  "acceptance_thresholds" => acceptance,
  "failures" => run.failures
}

puts JSON.pretty_generate(report)
exit(run.failures.empty? ? 0 : 1)
