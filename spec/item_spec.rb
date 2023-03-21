require_relative '../lib/item'

describe 'An item of food or a beverage' do
    it 'has a name and volume' do
      item = Item.new('Leftover Pizza', 5)
      expect(item.name).to eq('Leftover Pizza')
      expect(item.volume).to eq(5)
    end
end
