require_relative '../lib/refrigerator'
require_relative '../lib/item'
require_relative '../lib/chiller'
require_relative '../lib/freezer'
require_relative '../lib/water_dispenser'
require_relative '../lib/water_reservoir'

describe 'A refrigerator' do
  let(:chiller) { Chiller.new }
  let(:freezer) { Freezer.new }
  let(:water_reservoir) { WaterReservoir.new }
  let(:water_dispenser) { WaterDispenser.new(water_reservoir) }
  let(:refrigerator) { Refrigerator.new(chiller, freezer, water_dispenser, water_reservoir) }

  it 'can chill an item' do
    item = Item.new('Leftover Pizza', 5)
    expect(chiller.remaining_capacity).to eq(100)
    refrigerator.chill(item)
    expect(chiller.remaining_capacity).to eq(95)
  end

  it 'can freeze an item' do
    item = Item.new('Dreamsicle', 1)
    expect(freezer.remaining_capacity).to eq(100)
    refrigerator.freeze(item)
    expect(freezer.remaining_capacity).to eq(99)
  end

  it 'can set the chiller level' do
    expect(chiller.temperature).to eq(70)
    refrigerator.set_chiller_level(5)
    expect(chiller.temperature).to eq(45)
  end

  it 'can set the freezer level' do
    expect(freezer.temperature).to eq(70)
    refrigerator.set_freezer_level(5)
    expect(freezer.temperature).to eq(20)
  end
end
