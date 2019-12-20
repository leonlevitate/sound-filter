require 'band_filter'

RSpec.describe do
    it "responds with an array" do
        soundwave = band_filter([90,90,90,100,100], 90, 100)
        expect(soundwave).to be_an_instance_of(Array)
    end

    it "when passed frequency, returns same frequency" do
       soundwave = band_filter([90,90,90,100,100], 90, 100)
       expect(soundwave).to eq([90,90,90,100,100])
    end

    it "replaces low frequencies with lower limit value" do
        soundwave = band_filter([80,90,90,100,100], 90, 100)
        expect(soundwave).to eq([90,90,90,100,100])
    end

    it "replaces high frequencies with upper limit value" do
        soundwave = band_filter([90,90,90,100,120], 90, 110)
        expect(soundwave).to eq([90,90,90,100,110])
    end
end