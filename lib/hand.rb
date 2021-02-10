class Hand
  attr_accessor :cards

  def initialize(cards)
    self.cards = cards
  end

  def size
    cards.size
  end

  def show
    cards.map(&:to_s)
  end

  def inspect
    to_s
  end

  def high_card?

  end

  def has_pair?

  end

  def has_two_pair?

  end

  def has_straight?

  end

  def has_flush?
    cards.map(&:suit).uniq.size == 1
  end

  def has_full_house?

  end

  def has_four_of_a_kind?

  end

  def has_straight_flush?

  end

  def <=>(other_hand)
    raise NotImplementedError
  end
end