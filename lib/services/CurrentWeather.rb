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

  def retrieve_weather
    @weather['weather']
  end

  def retrieve_weather_hash
    retrieve_weather[0]
  end

  def retrieve_weather_hash_id
    retrieve_weather_hash['id']
  end

  def retrieve_weather_hash_main
    retrieve_weather_hash['main']
  end

  def retrieve_weather_hash_description
    retrieve_weather_hash['description']
  end

  def retrieve_weather_hash_icon
    retrieve_weather_hash['icon']
  end

  def retrieve_base
    @weather['base']
  end

  def retrieve_main
    @weather['main']
  end

  def retrieve_main_temperature
    retrieve_main['temp']
  end

  def retrieve_main_pressure
    retrieve_main['pressure']
  end

  def retrieve_main_humidity
    retrieve_main['humidity']
  end

  def retrieve_main_temp_min
    retrieve_main['temp_min']
  end

  def retrieve_main_temp_max
    retrieve_main['temp_max']
  end

  def retrieve_visibility
    @weather['visibiility']
  end

  def retrieve_wind
    @weather['wind']
  end

  def retrieve_wind_speed
    retrieve_wind['speed']
  end

  def retrieve_wind_deg
    retrieve_wind['deg']
  end

  def retrieve_cloud
    @weather['clouds']
  end

  def retrieve_cloud_all
    retrieve_cloud['all']
  end

  def retrieve_dt
    @weather['dt']
  end

  def retrieve_sys
    @weather['sys']
  end

  def retrieve_sys_type
    retrieve_sys['type']
  end

  def retrieve_sys_id
    retrieve_sys['id']
  end

  def retrieve_sys_message
    retrieve_sys['message']
  end

  def retrieve_sys_country
    retrieve_sys['country']
  end

  def retrieve_sys_sunrise
    retrieve_sys['sunrise']
  end 

  def retrieve_sys_sunset
    retrieve_sys['sunset']
  end

  def retrieve_id
    @weather['id']
  end

  def retrieve_name
    @weather['name']
  end

end