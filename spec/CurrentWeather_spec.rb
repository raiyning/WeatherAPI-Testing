require 'spec_helper'

describe Weatherio do

  context 'requesting information on a single current weather forecast correctly' do
    before(:all) do
      @weatherio = Weatherio.new.single_current_weather
      @weatherio.retrieve_current(ENV['API_KEY'], '2172797')
      p @weatherio
    end

    it "should have api respond with a hash" do
      expect(@weatherio.retrieve_data).to be_kind_of(Hash)
    end

    it "should have coordinates respond with a hash" do
      expect(@weatherio.retrieve_coord).to be_kind_of(Hash)
    end

    it "should have longitude as a float" do
      expect(@weatherio.retrieve_longitude).to be_kind_of(Float)
    end

    it "should have latitude as a float" do
      expect(@weatherio.retrieve_latitude).to be_kind_of(Float)
    end

    it "should have latitude as a float" do
      expect(@weatherio.retrieve_latitude).to be_kind_of(Float)
    end

    it "should have longitude within world limits" do
      expect(@weatherio.retrieve_longitude).to be_between(-180,180) 
    end

    it "should have latitude within world limits" do
      expect(@weatherio.retrieve_latitude).to be_between(-90,90) 
    end

    it "should have weather is an Array" do
      expect(@weatherio.retrieve_weather).to be_kind_of(Array) 
    end

    it "should have weather data is an Array" do
      expect(@weatherio.retrieve_weather).to be_kind_of(Array) 
    end

    it "should have weather data array stored a Hash inside" do
      expect(@weatherio.retrieve_weather_hash).to be_kind_of(Hash) 
    end

    it "should have weather id store as an interger " do
      expect(@weatherio.retrieve_weather_hash_id).to be_kind_of(Integer) 
    end

    it "should have weather main stored as an String " do
      expect(@weatherio.retrieve_weather_hash_main).to be_kind_of(String) 
    end

    it "should have weather description stored as an String " do
      expect(@weatherio.retrieve_weather_hash_description).to be_kind_of(String) 
    end

    it "should have weather icon store as an String " do
      expect(@weatherio.retrieve_weather_hash_icon).to be_kind_of(String) 
    end

    it "should have base store as an String " do
      expect(@weatherio.retrieve_base).to be_kind_of(String) 
    end

    it "should have main store as a Hash " do
      expect(@weatherio.retrieve_main).to be_kind_of(Hash) 
    end

    it "should have main tepmreture store as an Integer " do
      expect(@weatherio.retrieve_main_temperature).to be_kind_of(Float) 
    end

    it "should have main tepmreture range between highest and lowest recorded values for earth" do
      expect(@weatherio.retrieve_main_temperature).to be_between(222,420) 
    end

    it "should have main pressure store as an Integer " do
      expect(@weatherio.retrieve_main_pressure).to be_kind_of(Integer) 
    end

    it "should have main pressure range between highest and lowest recorded values for earth" do
      expect(@weatherio.retrieve_main_pressure).to be_between(0,1050) 
    end

    it "should have main Humidity store as an Integer " do
      expect(@weatherio.retrieve_main_humidity).to be_kind_of(Integer) 
    end

    it "should have main Humidity between the percentage range of earth " do
      expect(@weatherio.retrieve_main_humidity).to be_between(0,100) 
    end

    it "should have visibility stored as Integer " do
      expect(@weatherio.retrieve_main_humidity).to be_kind_of(Integer) 
    end

    it "should have visibility stored as maximum and minimum values " do
      expect(@weatherio.retrieve_main_humidity).to be_between(0,100) 
    end

    it "should have wind stored as Hash " do
      expect(@weatherio.retrieve_wind).to be_kind_of(Hash) 
    end

    it "should have wind speed stored as Float " do
      expect(@weatherio.retrieve_wind_speed).to be_kind_of(Float) 
    end

    it "should have wind speed between maximum and minimum values in metric and imperial for earth" do
      expect(@weatherio.retrieve_wind_speed).to  be_between(0,400) 
    end

    it "should have wind deg stored as Integer " do
      expect(@weatherio.retrieve_wind_deg).to be_kind_of(Integer) 
    end
    
    it "should have wind speed between maximum and minimum values for wind degrees" do
      expect(@weatherio.retrieve_wind_speed).to  be_between(0,360) 
    end
    
    it "should have wind deg stored as Integer " do
      expect(@weatherio.retrieve_wind_deg).to be_kind_of(Integer) 
    end

    it "should have cloud stored as Hash " do
      expect(@weatherio.retrieve_cloud).to be_kind_of(Hash) 
    end

    it "should have cloud value stored as Hash " do
      expect(@weatherio.retrieve_cloud_all).to be_kind_of(Integer) 
    end

    it "should have cloudiness between maximum and minimum values percentage" do
      expect(@weatherio.retrieve_wind_speed).to  be_between(0,100) 
    end

    it "should have dt value stored as Integer " do
      expect(@weatherio.retrieve_dt).to be_kind_of(Integer) 
    end

    it "should have sys  stored as Hash " do
      expect(@weatherio.retrieve_sys).to be_kind_of(Hash) 
    end

    it "should have sys type stored as Integer " do
      expect(@weatherio.retrieve_sys_type).to be_kind_of(Integer) 
    end

    it "should have sys id type stored as Integer " do
      expect(@weatherio.retrieve_sys_id).to be_kind_of(Integer) 
    end

    it "should have sys message type stored as Float " do
      expect(@weatherio.retrieve_sys_message).to be_kind_of(Float)
    end

    it "should have sys country type stored as String " do
      expect(@weatherio.retrieve_sys_country).to be_kind_of(String)
    end

    it "should have sys sunrise type stored as Integer " do
      expect(@weatherio.retrieve_sys_sunrise).to be_kind_of(Integer)
    end

    it "should have sys sunset type stored as Integer " do
      expect(@weatherio.retrieve_sys_sunset).to be_kind_of(Integer)
    end

    it "should have ID type stored as Integer " do
      expect(@weatherio.retrieve_id).to be_kind_of(Integer)
    end

    it "should have name type stored as String " do
      expect(@weatherio.retrieve_name).to be_kind_of(String)
    end

  end
  
end
