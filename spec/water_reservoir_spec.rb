require_relative '../lib/water_reservoir'

describe 'A water reservoir' do
    it 'has a capacity' do
        water_reservoir = WaterReservoir.new
        expect(water_reservoir.capacity).to eq(10)
    end

    it 'is initially empty' do
        water_reservoir = WaterReservoir.new
        #expect(water_reservoir.current_water_volume).to eq(0)
        expect(water_reservoir).to be_empty
    end

    # it 'is no longer empty when we fill it' do
    #     water_reservoir.fill
    #     expect(water_reservoir.current_water_volume).to eq(water_reservoir.capacity)
    #   end
end
