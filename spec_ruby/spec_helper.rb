Dir.glob(File.join(File.expand_path("..", __dir__), 'problems', '**', '*.rb'), &method(:require))
require 'pry-byebug'

RSpec.configure do |config|
  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  if config.files_to_run.one?
    config.full_backtrace = true

    config.default_formatter = 'doc'
  end

  config.order = :defined

  Kernel.srand(config.seed)

  config.disable_monkey_patching!
  config.warnings = false

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
end
