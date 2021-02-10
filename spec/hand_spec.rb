require 'rspec'
require 'hand'
require 'card'

describe Hand do
  describe '#initialize' do
    let(:hand) do 
      Hand.new([
        Card.new('spades', 'ten'),
        Card.new('spades', 'jack'),
        Card.new('spades', 'queen'),
        Card.new('spades', 'king'),
        Card.new('spades', 'ace')
      ])
    end

    it 'sets up a hand correctly' do
      expect(hand.size).to eq(5)
    end
  end

  describe '#has_flush?' do
    let(:hand) do 
      Hand.new([
        Card.new('spades', 'ten'),
        Card.new('spades', 'jack'),
        Card.new('spades', 'queen'),
        Card.new('spades', 'king'),
        Card.new('spades', 'ace')
      ])
    end

    let(:hand_2) do 
      Hand.new([
        Card.new('spades', 'ten'),
        Card.new('spades', 'jack'),
        Card.new('spades', 'queen'),
        Card.new('spades', 'king'),
        Card.new('hearts', 'ace')
      ])
    end

    it 'returns true when suit is all the same' do
      expect(hand.has_flush?).to be_truthy
    end

    it 'returns false when suit mismatch all the same' do
      expect(hand_2.has_flush?).to be_falsy
    end
  end

  describe '<=>' do
    let(:ace_jack_hand) do 
      Hand.new([
        Card.new('spades', 'ace'),
        Card.new('hearts', 'two'),
        Card.new('diamonds', 'five'),
        Card.new('clubs', 'jack'),
        Card.new('spades', 'seven')
      ])
    end

    let(:ace_queen_hand) do 
      Hand.new([
        Card.new('hearts', 'ace'),
        Card.new('hearts', 'queen'),
        Card.new('spades', 'four'),
        Card.new('spades', 'three'),
        Card.new('diamonds', 'two')
      ])
    end

    it 'ace queen hand beats ace jack hand' do
      expect(ace_queen_hand <=> ace_queen_hand).to eq(1)
    end
  end
end
