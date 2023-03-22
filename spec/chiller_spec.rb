require_relative '../lib/chiller'
require_relative '../lib/item'

describe Chiller do
  let(:chiller) { Chiller.new(50) }

  it 'should initialize with a capacity and default temperature' do
    expect(chiller.capacity).to eq(50)
    expect(chiller.temperature).to eq(Chiller::ROOM_TEMPERATURE)
  end

  it 'should be able to turn on and off' do
    chiller.turn_on
    expect(chiller.instance_variable_get(:@power)).to eq(:on)

    chiller.turn_off
    expect(chiller.instance_variable_get(:@power)).to eq(:off)
  end

  it 'should be able to add items' do
    pizza = Item.new('Leftover Pizza', 5)
    chiller.add(pizza)

    expect(chiller.instance_variable_get(:@contents)).to eq([pizza])
  end

  it 'should be able to calculate remaining capacity' do
    pizza = Item.new('Leftover Pizza', 5)

    chiller.add(pizza)

    expect(chiller.remaining_capacity).to eq(45)
  end

  it 'should be able to set temperature based on level' do
    chiller.set_level(3)
    expect(chiller.temperature).to eq(55)
  end
end
