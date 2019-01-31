require 'spec_helper'

describe Weatherio do

  context 'requesting information on a single postcode works correctly' do
    before(:all) do
      @weatherio = Weatherio.new.single_current_weather
      @weatherio.retrieve_current('e8ae78dd6c6a25037365722ca11bf1b0', '2172797')
      p @weatherio
    end

    it "should have api respond with a hash" do
      expect(@weatherio.retrieve_data).to be_kind_of(Hash)
    end

    it "should have api respond with a hash" do
      expect(@weatherio.retrieve_coord).to be_kind_of(Hash)
    end

    it "should have longitude as a float" do
      expect(@weatherio.retrieve_longitude).to be_kind_of(Float)
    end

    it "should have latitude as a float" do
      expect(@weatherio.retrieve_latitude).to be_kind_of(Float)
    end

  end
  
end
