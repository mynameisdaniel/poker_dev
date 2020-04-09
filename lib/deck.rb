class Deck

  SUITS = [
    'clubs',
    'diamonds',
    'hearts',
    'spades'
  ].freeze

  VALUES = [
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine',
    'ten',
    'jack',
    'queen',
    'king',
    'ace'
  ]

  attr_accessor :cards

  def initialize()
    self.cards = []
    build_deck
  end

  def shuffle
    self.cards.shuffle
  end

  def deal_hand
    Hand.new(self.cards.last(5))
  end

  def build_deck
    SUITS.each do |suit|
      VALUES.each do |value|
        cards << Card.new(suit, value)
      end
    end
  end

  def inspect
   "Deck"
  end
end

