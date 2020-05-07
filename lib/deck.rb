require './lib/card'

class Deck
  attr_reader :cards,
              :high_cards
              # add hotfix

  def initialize(cards)
    @cards = cards
    @high_cards = []
  end

  def rank_of_card_at(num)
    ranking_card = @cards[num]
    ranking_card.rank
  end

  def high_ranking_cards
    # require 'pry'; binding.pry
    @cards.each do |card|
      if card.rank >= 11
        @high_cards << card
      end
    end
    @high_cards
  end

  def percent_high_ranking
    percent = @high_cards.count.to_f / @cards.count.to_f * 100
    percent.round(2)
  end

  def remove_card
    @cards.delete_at(0)
  end


end
