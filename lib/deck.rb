require './lib/card'

class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def rank_of_card_at(num)
    ranking_card = @cards[num]
    ranking_card.rank
  end

end
