#!/usr/bin/env ruby
# encoding: UTF-8

require "json"
require "yaml"

ROOT = File.expand_path("..", __dir__)
errors = []
checks = 0

skill_paths = Dir.glob(File.join(ROOT, "{core,platforms,modules}/**/SKILL.md")).sort
expected_skills = 12
checks += 1
errors << "expected #{expected_skills} loadable packages, found #{skill_paths.length}" unless skill_paths.length == expected_skills

required_sections = [
  "## Required inputs",
  "## Optional inputs",
  "## Missing-data behaviour",
  "## Output contract",
  "## Evaluation"
]

brand_leakage_terms = ["Monzù", "Monzu", "Drops Laundry", "My Treasure Bags"]

skill_paths.each do |path|
  body = File.read(path, encoding: "UTF-8")
  checks += 1
  frontmatter_match = body.match(/\A---\n(.*?)\n---/m)
  if frontmatter_match.nil?
    errors << "missing or invalid YAML frontmatter: #{path}"
  else
    begin
      frontmatter = YAML.safe_load(frontmatter_match[1], permitted_classes: [], aliases: false)
      allowed = %w[name description license allowed-tools metadata]
      checks += 6
      errors << "frontmatter must be a map: #{path}" unless frontmatter.is_a?(Hash)
      errors << "unexpected frontmatter key: #{path}" unless (frontmatter.keys - allowed).empty?
      name = frontmatter["name"]
      description = frontmatter["description"]
      errors << "invalid skill name: #{path}" unless name.is_a?(String) && name.match?(/\A[a-z0-9]+(?:-[a-z0-9]+)*\z/) && name.length <= 64
      errors << "skill name must match folder: #{path}" unless name == File.basename(File.dirname(path))
      errors << "invalid description: #{path}" unless description.is_a?(String) && !description.empty? && description.length <= 1024 && !description.include?("<") && !description.include?(">")
      errors << "unfinished placeholder: #{path}" if body.match?(/^\s*\[TODO:[^\n]*\]\s*$/)
    rescue StandardError => e
      errors << "invalid frontmatter YAML #{path}: #{e.message}"
    end
  end

  required_sections.each do |heading|
    checks += 1
    errors << "missing #{heading}: #{path}" unless body.include?(heading)
  end

  brand_leakage_terms.each do |term|
    checks += 1
    errors << "brand leakage '#{term}': #{path}" if body.include?(term)
  end

  body.scan(/\[[^\]]+\]\(([^)]+)\)/).flatten.each do |target|
    next if target.match?(/\A(?:https?:|#)/)

    resolved = File.expand_path(target, File.dirname(path))
    checks += 1
    errors << "broken local reference '#{target}': #{path}" unless File.exist?(resolved)
  end

  tests_path = File.join(File.dirname(path), "tests", "cases.yaml")
  checks += 1
  unless File.file?(tests_path)
    errors << "missing tests: #{path}"
    next
  end

  begin
    local_tests = YAML.safe_load(File.read(tests_path), permitted_classes: [], aliases: false)
    checks += 1
    errors << "no test cases: #{tests_path}" unless local_tests["cases"].is_a?(Array) && !local_tests["cases"].empty?
  rescue StandardError => e
    errors << "invalid YAML #{tests_path}: #{e.message}"
  end
end

schema_paths = Dir.glob(File.join(ROOT, "schemas", "*.schema.json")).sort
checks += 1
errors << "expected 8 schemas, found #{schema_paths.length}" unless schema_paths.length == 8

schema_paths.each do |path|
  begin
    schema = JSON.parse(File.read(path))
    checks += 2
    errors << "schema lacks title: #{path}" if schema["title"].to_s.empty?
    errors << "schema lacks required fields: #{path}" unless schema["required"].is_a?(Array) && !schema["required"].empty?
  rescue JSON::ParserError => e
    errors << "invalid JSON #{path}: #{e.message}"
  end
end

suite_path = File.join(__dir__, "evaluation-cases.yaml")
suite = YAML.safe_load(File.read(suite_path), permitted_classes: [], aliases: false)
fixtures = suite.fetch("fixtures")
results = suite.fetch("evaluated_results")

required_fixture_ids = %w[restaurant_local_venue kids_ecommerce_product laundry_local_service future_unknown_b2b]
checks += 1
errors << "missing required industry fixture" unless required_fixture_ids.sort == fixtures.map { |f| f["id"] }.sort

fixtures.each do |fixture|
  result = results.find { |candidate| candidate["fixture"] == fixture["id"] }
  checks += 1
  if result.nil?
    errors << "missing evaluated result for #{fixture['id']}"
    next
  end

  missing = fixture.fetch("required_behaviours") - result.fetch("observed")
  prohibited = fixture.fetch("prohibited_behaviours") & result.fetch("prohibited_observed")
  checks += 2
  errors << "missing behaviours for #{fixture['id']}: #{missing.join(', ')}" unless missing.empty?
  errors << "prohibited behaviours for #{fixture['id']}: #{prohibited.join(', ')}" unless prohibited.empty?
end

creative = suite.fetch("creative_adversarial_case")
creative_result = results.find { |candidate| candidate["fixture"] == creative["id"] }
checks += 1
if creative_result.nil?
  errors << "missing creative adversarial result"
else
  required = creative.fetch("required_diagnosis") + creative.fetch("required_improvement")
  missing = required - creative_result.fetch("observed")
  prohibited = creative.fetch("prohibited_response") & creative_result.fetch("prohibited_observed")
  checks += 3
  errors << "creative case missing: #{missing.join(', ')}" unless missing.empty?
  errors << "creative case prohibited response: #{prohibited.join(', ')}" unless prohibited.empty?
  errors << "creative result must PASS" unless creative_result["result"] == "PASS"
end

provenance = YAML.safe_load(File.read(File.join(ROOT, "PROVENANCE.yaml")), permitted_classes: [], aliases: false)
checks += 2
errors << "provenance has no sources" unless provenance["sources"].is_a?(Array) && !provenance["sources"].empty?
errors << "paid resources must be excluded" unless provenance.fetch("excluded_sources", []).any? { |source| source["id"] == "phase_3_6_paid_resources" }

if errors.empty?
  puts "PASS: #{checks} checks; #{skill_paths.length} loadable packages; #{schema_paths.length} schemas; #{fixtures.length} industry fixtures; 1 adversarial creative case"
  exit 0
end

warn "FAIL: #{errors.length} errors across #{checks} checks"
errors.each { |error| warn "- #{error}" }
exit 1
