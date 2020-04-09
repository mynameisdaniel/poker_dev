class Card

  include Comparable

  attr_accessor :suit, :value

  def initialize(suit, value)
   self.suit = suit
   self.value = value
  end

  def ==(other_card)
    self.value == other_card.value
  end

  def <=>(other_card)
    if self == other_card
      0
    elsif self.value < other_card.value
      -1
    elsif self.value > other_card.value
      1
    end
  end

  def to_s
    "#{value} of #{suit}"
  end

  def inspect
    to_s
  end
end