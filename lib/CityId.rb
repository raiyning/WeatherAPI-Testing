require 'json'
require_relative 'Parse_json'

class CityId
  def initialize
    @hello = ParseJson.new('city_list.json')
  end

  def print 
    @hello[0]['name']
  end
end

test = CityId.new
test.print