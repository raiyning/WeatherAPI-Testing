require 'httparty'
require 'json'
require 'dotenv'
Dotenv.load('.env')

class CurrentWeather
  include HTTParty
  
  base_uri 'http://api.openweathermap.org/data/2.5'

  
  def retrieve_current(api_key,cityid)
    @weather = JSON.parse(self.class.get("/weather?id=#{cityid}&appid=#{api_key}").body)
  end

  def print_json
    puts @weather
  end

end

test = CurrentWeather.new
test.retrieve_current(ENV['API_KEY'],'2172797')
test.print_json

