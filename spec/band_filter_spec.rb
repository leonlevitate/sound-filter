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

    it "replaces all frequencies with upper and lower limit values" do
        soundwave = band_filter([80,90,100,120,120], 90, 110)
        expect(soundwave).to eq([90,90,100,110,110])
    end

    it "throws error if passed string as a parameter" do
        expect { band_filter("hello world", 90, 110) }.to raise_error("wrong input")
    end
end