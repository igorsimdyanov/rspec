require_relative 'support/array_builder'
require_relative 'support/enumerable_shared_examples'

Dir['lib/**/*.rb'].each do |file|
  require_relative "../#{file}"
end

RSpec::Expectations.configuration.on_potential_false_positives = :nothing

RSpec.configure do |config|

  config.alias_example_group_to 'описание'
  config.alias_example_group_to 'в_контексте'
  config.alias_example_to 'тест'
  config.alias_example_to 'тестируем'

  config.include ArrayBuilder

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.define_derived_metadata(file_path: /spec\/services/) do |meta|
    meta[:fast] = true
  end

  config.define_derived_metadata(type: :js) do |meta|
    # ...
  end

  config.define_derived_metadata(type: :model) do |meta|
    # ...
  end

  config.define_derived_metadata do |meta|
    meta[:default] = true unless meta.key? :default
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
