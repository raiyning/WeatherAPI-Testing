require 'spec_helper'

describe Weatherio do

  context 'requesting information on a five current weather forecast correctly' do
    before(:all) do
      @weatherio = Weatherio.new.five_current_weather
      @cityid = ParseJson.new.get_id_by_name('Vinogradovo','RU')
      @weatherio.retrieve_current(ENV['API_KEY'], @cityid)
      # p @weatherio
    end


    it "should have api respond with a hash" do
      expect(@weatherio.retrieve_data).to be_kind_of(Hash)
    end
    

  end
end