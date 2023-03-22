require_relative '../lib/freezer'

describe 'A freezer' do
    let(:freezer) { Freezer.new }

    it 'has has a capacity' do
        expect(freezer.capacity).to eq(100)
    end
    
    it 'has a temp' do
        expect(freezer.temperature).to eq(70)
    end

    describe '#turn_on' do
        it 'changes the power to on' do
          freezer.turn_on
          expect(freezer.instance_variable_get(:@power)).to eq(:on)
        end
    end
    
    describe '#turn_off' do
        it 'changes the power to off' do
            freezer.turn_off
          expect(freezer.instance_variable_get(:@power)).to eq(:off)
        end
    end

    it 'can set the temperature level' do
        expect { freezer.set_level(5) }.to change { freezer.temperature }.from(70).to(20)
    end

end
