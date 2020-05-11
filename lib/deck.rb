require './lib/card'

class Deck
  attr_reader :cards,
              :high_cards

  def initialize(cards)
    @cards = cards
    @high_cards = []
  end

  def rank_of_card_at(num)
    ranking_card = @cards[num]
    ranking_card.rank
    # require 'pry'; binding.pry
  end

  def high_ranking_cards
    @high_cards = []
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
    if @cards[0].rank > 10
      @cards.delete_at(0)
      @high_cards.delete_at(0)
    else
      @cards.delete_at(0)
    end
  end

  def add_card(card)
    @cards << card
  end


end
