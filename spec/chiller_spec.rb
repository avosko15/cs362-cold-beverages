require_relative '../lib/chiller'

describe 'A chiller' do
    let(:chiller) { Chiller.new }

    it 'has has a capacity' do
        expect(chiller.capacity).to eq(100)
    end
    
    it 'has a temp' do
        expect(chiller.temperature).to eq(70)
    end

    it 'can be turned on' do
        expect { chiller.turn_on }.to change { chiller.instance_variable_get(:@power) }.from(:off).to(:on)
    end

    it 'can set the temperature level' do
        expect { chiller.set_level(5) }.to change { chiller.temperature }.from(70).to(45)
      end

end
