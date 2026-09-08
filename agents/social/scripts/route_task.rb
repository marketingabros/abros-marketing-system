#!/usr/bin/env ruby
# encoding: UTF-8

require "json"
require "yaml"

ROOT = File.expand_path("..", __dir__)
CONFIG = YAML.safe_load(File.read(File.join(ROOT, "routing.yaml")), permitted_classes: [], aliases: false)

def abort_with(message)
  warn message
  exit 2
end

input_text = ARGV[0] ? File.read(ARGV[0]) : STDIN.read
request = JSON.parse(input_text)
task_type = request["task_type"]
task = CONFIG.fetch("task_types")[task_type]
abort_with("Unsupported task_type: #{task_type.inspect}") unless task

brand_id = request["brand_id"]
platform = request["platform"]
business_model = request["business_model"]
vertical = request["vertical_module"]
objective = request["objective"].to_s.strip
abort_with("objective is required") if objective.empty?

selected_skill_ids = task.fetch("skills").dup
format = request["format"]
if platform && format
  format_skill = CONFIG.dig("platforms", platform, "format_skills", format)
  selected_skill_ids << format_skill if format_skill
end
selected_skills = selected_skill_ids.compact.uniq.map { |id| CONFIG.fetch("skills").fetch(id) }

platform_references = []
if platform && CONFIG.fetch("platforms").key?(platform)
  platform_references << CONFIG.dig("platforms", platform, "current_knowledge")
end

missing = []
hard_missing = []

brand_policy = task.fetch("brand_os_policy")
brand_available = request["brand_os_available"] == true
if brand_id.nil? || brand_id.to_s.empty?
  missing << "brand_id"
  hard_missing << "brand_id" if brand_policy == "REQUIRED"
elsif !brand_available
  missing << "Brand OS unavailable for #{brand_id}"
  hard_missing << "Brand OS" if brand_policy == "REQUIRED"
end

model_policy = task.fetch("business_model_policy")
if business_model.nil? || !CONFIG.fetch("business_models").key?(business_model)
  missing << "supported primary business model"
  hard_missing << "business model" if model_policy == "REQUIRED"
end

platform_policy = task.fetch("platform_policy")
if platform_policy == "INSTAGRAM" && platform != "instagram"
  missing << "Instagram platform context"
  hard_missing << "Instagram platform context"
elsif platform_policy == "REQUIRED" && (platform.nil? || !CONFIG.fetch("platforms").key?(platform))
  missing << "supported platform context"
  hard_missing << "platform context"
end

if vertical
  vertical_config = CONFIG.fetch("verticals")[vertical]
  if vertical_config.nil?
    missing << "approved vertical module: #{vertical}"
    hard_missing << "vertical module"
  elsif vertical_config.fetch("requires_business_model") != business_model
    missing << "vertical #{vertical} requires #{vertical_config.fetch('requires_business_model')}"
    hard_missing << "compatible vertical/business model"
  end
end

available_runtime = request.fetch("available_runtime", [])
runtime_requested = task.fetch("runtime_evidence")
(runtime_requested - available_runtime).each { |item| missing << "runtime: #{item}" }

selected_sections = brand_available ? task.fetch("brand_sections") : []

status = if hard_missing.any?
           "BLOCK"
         elsif missing.any?
           "PROCEED_WITH_LIMITATIONS"
         else
           "PROCEED"
         end

plan = {
  "output_type" => "AGENT_TASK_PLAN",
  "task_type" => task_type,
  "brand_id" => brand_id,
  "platform" => platform,
  "business_model" => business_model,
  "vertical_module" => vertical,
  "objective" => objective,
  "selected_skills" => selected_skills,
  "selected_brand_os_sections" => selected_sections,
  "platform_references" => platform_references,
  "runtime_evidence_requested" => runtime_requested,
  "missing_information" => missing.uniq,
  "proceed_status" => status
}

puts JSON.pretty_generate(plan)
