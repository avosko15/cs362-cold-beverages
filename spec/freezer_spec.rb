require_relative '../lib/freezer'

describe 'A freezer' do
    let(:freezer) { Freezer.new }

    it 'has has a capacity' do
        expect(freezer.capacity).to eq(100)
    end
    
    it 'has a temp' do
        expect(freezer.temperature).to eq(70)
    end

    it 'can be turned on' do
        expect { freezer.turn_on }.to change { freezer.instance_variable_get(:@power) }.from(:off).to(:on)
    end

    it 'can set the temperature level' do
        expect { freezer.set_level(5) }.to change { freezer.temperature }.from(70).to(20)
      end
    

end
