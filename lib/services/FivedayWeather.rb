require 'httparty'
require 'json'
require 'dotenv'
Dotenv.load('.env')

class CurrentWeather
  include HTTParty
  
  base_uri 'http://api.openweathermap.org/data/2.5 '

  
  def retrieve_current(api_key, cityid)
    @weather = JSON.parse(self.class.get("/forecast?id=#{cityid}&appid=#{api_key}").body)
  end

end