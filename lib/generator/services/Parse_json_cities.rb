require 'json'

class ParseJson
  attr_accessor :json_data

  def initialize
    @json_data = JSON.parse(File.read('city_list.json'))
  end

  def get_id_by_name(city_name, country)
    @json_data.each do |data|
      if (data['name'] == city_name) && (data['country'] == country)
        return data['id']
      end
    end
  end
end