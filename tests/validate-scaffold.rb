require "json"

root = File.expand_path("..", __dir__)

required_directories = %w[
  brands/monzu/brand-os/brand-identity
  brands/monzu/brand-os/visual-identity
  brands/monzu/brand-os/tone-of-voice
  brands/monzu/brand-os/positioning
  brands/monzu/brand-os/audiences
  brands/monzu/brand-os/business-strategy
  brands/monzu/brand-os/long-term-objectives
  brands/monzu/brand-os/products-and-services
  brands/monzu/operating-context/current-objectives
  brands/monzu/operating-context/commercial-priorities
  brands/monzu/channels/assets
  brands/monzu/channels/menus
  brands/monzu/channels/website-information
  brands/monzu/history/marketing-history
  brands/monzu/history/social-history
  brands/monzu/history/advertising-history
  brands/monzu/evidence/feedback
  brands/monzu/evidence/observations
  brands/monzu/evidence/performance-data
  brands/monzu/governance/approved-work
  brands/monzu/governance/rejected-work
  brands/monzu/governance/management-decisions
  brands/monzu/governance/approved-learnings
  brands/monzu/provenance
]

missing = required_directories.reject { |path| Dir.exist?(File.join(root, path)) }
abort "Missing directories: #{missing.join(', ')}" unless missing.empty?

json_files = Dir.glob(File.join(root, "**", "*.json"))
json_files.each { |path| JSON.parse(File.read(path)) }

agent_files = Dir.glob(File.join(root, "agents", "*", "agent.json"))
agent_files.each do |path|
  agent = JSON.parse(File.read(path))
  abort "Agent contains brand-specific path: #{path}" if agent.to_s.include?("brands/monzu")
  abort "Agent can write Brand OS: #{path}" if agent.fetch("writes").any? { |entry| entry.end_with?("/brand-os") }
end

puts "Validated #{json_files.length} JSON files, #{agent_files.length} agent boundaries, and #{required_directories.length} required directories."

