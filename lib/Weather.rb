require_relative 'services/currentweather'

class Weatherio

  def single_current_weather
    CurrentWeather.new
  end

end