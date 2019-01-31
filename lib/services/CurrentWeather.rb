require 'httparty'
require 'json'
require 'dotenv'
Dotenv.load('.env')

class CurrentWeather
  include HTTParty
  
  base_uri 'http://api.openweathermap.org/data/2.5'

  
  def retrieve_current(api_key, cityid)
    @weather = JSON.parse(self.class.get("/weather?id=#{cityid}&appid=#{api_key}").body)
  end

  def retrieve_data
     @weather
  end

  def retrieve_coord
    @weather['coord']
  end

  def retrieve_longitude
   retrieve_coord['lon']
  end

  def retrieve_latitude
    retrieve_coord['lat']
   end

end

# test = CurrentWeather.new
# test.retrieve_current(ENV['API_KEY'], '2172797')
# test.print_json

# p ENV['API_KEY']

