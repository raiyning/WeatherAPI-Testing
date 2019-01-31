require 'json'

class ParseJson

  attr_accessor :json_data

  def initialize(json)
    @json_data = JSON.parse(File.read(json))
  end

end

test = ParseJson.new('city_list.json')
p test