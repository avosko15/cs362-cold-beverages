require_relative '../lib/water_dispenser'

  describe 'A water dispenser' do
    let(:reservoir) { double("WaterReservoir") }
    let(:dispenser) { WaterDispenser.new(reservoir) }

  describe "#dispense" do
    it "drains the correct amount from the reservoir" do
      volume = 2
      vessel = double("Nalgene", volume: volume)
      expect(reservoir).to receive(:drain).with(volume)
      dispenser.dispense(vessel)
    end
  end
end
