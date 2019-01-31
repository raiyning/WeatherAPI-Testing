require 'rspec'
require_relative '../lib/Weather'
require_relative '../lib/generator/services/Parse_json_cities'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end