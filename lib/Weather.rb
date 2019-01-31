require_relative 'services/currentweather'
require_relative 'services/fivedayweather'


class Weatherio

  def single_current_weather
    CurrentWeather.new
  end

  def five_current_weather
    FivedayWeather.new
  end

end