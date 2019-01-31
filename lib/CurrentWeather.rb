require 'httparty'
require 'json'
require 'dotenv'

class CurrentWeather
  include HTTParty
  base_uri  'http://api.openweathermap.org/data/2.5'
  
  def retrieve_current(api_key)
    @weather = JSON.parse(self.class.get("/weather?id=2172797&appid=e8ae78dd6c6a25037365722ca11bf1b0").body)
  end

  def print_json
    puts @weather
  end

end

test = CurrentWeather.new
test.retrieve_current
test.print_json