require 'rspec'
require_relative '../lib/Weather'
require_relative '../lib/Parse_json'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
