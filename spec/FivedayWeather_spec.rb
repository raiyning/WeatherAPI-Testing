require 'spec_helper'
# rspec tests for forecast weather, requires more suffcient testing 
describe Weatherio do

  context 'requesting information on a five current weather forecast correctly' do
    before(:all) do
      @five_day_weather_service = Weatherio.new.five_current_weather
      @cityid = ParseJson.new.get_id_by_name('Vinogradovo','RU')
      @five_day_weather_service.retrieve_current(ENV['API_KEY'], @cityid)
    end

    it "should have api respond with a hash" do
      expect(@five_day_weather_service.retrieve_data).to be_kind_of(Hash)
    end

    it 'should retrieve cod as String' do 
      expect(@five_day_weather_service.retrieve_cod).to be_kind_of(String)
    end

    it 'should retrieve message as String' do 
      expect(@five_day_weather_service.retrieve_message).to be_kind_of(Float)
    end

    it 'should retrieve cnt as Integer' do 
      expect(@five_day_weather_service.retrieve_cnt).to be_kind_of(Integer)
    end

    it 'should retrieve all dt from list array as integer' do 
        @five_day_weather_service.retrieve_all_dt.each do |dt| 
          expect(dt).to be_kind_of(Integer)
      end
    end

    it 'should retrieve all main as Hash' do 
        @five_day_weather_service.retrieve_all_main.each do |main| 
          expect(main).to be_kind_of(Hash)
      end
    end

    it 'should retrieve all temp as float' do 
        @five_day_weather_service.retrieve_all_main_temp.each do |temp| 
          expect(temp).to be_kind_of(Float)
      end
    end

    it 'should retrieve all min temp as float' do 
        @five_day_weather_service.retrieve_all_main_temp_min.each do |temp_min| 
          expect(temp_min).to be_kind_of(Float)
      end
    end

    it 'should retrieve all max temp as float' do 
        @five_day_weather_service.retrieve_all_main_temp_max.each do |temp_max| 
          expect(temp_max).to be_kind_of(Float)
      end
    end

    it 'should retrieve all pressure as float or integer' do 
        @five_day_weather_service.retrieve_all_main_pressure.each do |pressure| 
          expect(pressure).to be_kind_of(Integer) | be_kind_of(Float)
      end
    end

    it 'should retrieve all ground level as float or integer' do 
        @five_day_weather_service.retrieve_all_main_grnd_level.each do |grnd_level| 
          expect(grnd_level).to be_kind_of(Integer) | be_kind_of(Float)
      end
    end

    it 'should retrieve all humidity as float or integer' do 
        @five_day_weather_service.retrieve_all_main_humidity.each do |humidity| 
          expect(humidity).to be_kind_of(Integer) | be_kind_of(Float)
      end
    end

    it 'should retrieve all temp kf as float or integer' do 
        @five_day_weather_service.retrieve_all_main_temp_kf.each do |temp_kf| 
          expect(temp_kf).to be_kind_of(Integer) | be_kind_of(Float)
      end
    end

    it 'should retrieve all weather from list array as array' do 
      @five_day_weather_service.retrieve_all_weather.each do |weather| 
        expect(weather).to be_kind_of(Array)
      end
    end

    it 'should retrieve all weather id as integer' do 
      @five_day_weather_service.retrieve_all_weather_id.each do |weather_id| 
        expect(weather_id).to be_kind_of(Integer)
      end
    end

    it 'should retrieve all weather main as string' do 
      @five_day_weather_service.retrieve_all_weather_main.each do |weather_main| 
        expect(weather_main).to be_kind_of(String)
      end
    end

    it 'should retrieve all weather description as string' do 
      @five_day_weather_service.retrieve_all_weather_description.each do |weather_description| 
        expect(weather_description).to be_kind_of(String)
      end
    end

    it 'should retrieve all weather icon as string' do 
      @five_day_weather_service.retrieve_all_weather_icon.each do |weather_icon| 
        expect(weather_icon).to be_kind_of(String)
      end
    end
    
  end
end