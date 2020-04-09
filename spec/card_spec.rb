require 'rspec'
require 'card'

describe Card do
  describe '#initialize' do
    subject(:card) { Card.new('spades', 'ten') }

    it 'sets up a card correctly' do
      expect(card.suit).to eq('spades')
      expect(card.value).to eq('ten')
    end
  end

  describe '==' do
    let(:card) { Card.new('spades', 'ten') }
    let(:other_card) { Card.new('hearts', 'ten') }
    
    it 'returns true when cards are the same value' do
      expect(card == other_card).to be_truthy
    end
  end

  describe '<=>' do
    let(:card) { Card.new('spades', 'ten') }
    let(:other_card) { Card.new('hearts', 'ten') }
    
    it 'returns 0 when cards are the same value' do
      expect(card <=> other_card).to eq(0)
    end

    # 1 <=> 2 => -1
    # 1 <=> 1 => 0
    # 2 <=> 1 => +1

    it 'returns -1 when card less than other card' do

    end

    it 'returns 1 when card greater than other card' do

    end
  end
end
