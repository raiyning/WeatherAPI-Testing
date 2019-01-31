require 'json'
# generator for ID, requires testing as well
class ParseJson
  attr_accessor :json_data

  def initialize
    @json_data = JSON.parse(File.read('city_list.json'))
  end
  
  # method to search through json file and return city id
  def get_id_by_name(city_name, country)

    @json_data.each do |data|
      if (data['name'] == city_name) && (data['country'] == country)
        return data['id']
      end
    end

  end
end