require './lib/card'
require './lib/deck'
require './lib/player'

class Turn
  attr_reader :player1,
              :player2,
              :spoils_of_war

  def initialize(name, name2)
    @player1 = name
    @player2 = name2
    @spoils_of_war = []
  end

  def type
    if player1.deck.rank_of_card_at(0) != player2.deck.rank_of_card_at(0)
      :basic
    elsif player1.deck.rank_of_card_at(0) == player2.deck.rank_of_card_at(0) && player1.deck.rank_of_card_at(2) == player2.deck.rank_of_card_at(2)
      :mutually_assured_destruction
    else
      :war
    end
  end

  def winner
    if type == :basic
      if player1.deck.rank_of_card_at(0) > player2.deck.rank_of_card_at(0)
        player1
      else
        player2
      end
    elsif type == :war
      if player1.deck.rank_of_card_at(2) > player2.deck.rank_of_card_at(2)
        player1
      else
        player2
      end
    elsif type == :mutually_assured_destruction
      "No Winner"
    end
  end

  def pile_cards
    if type == :basic
      spoils_of_war << player1.deck.cards.slice!(0)
      spoils_of_war << player2.deck.cards.slice!(0)
    elsif type == :war
      spoils_of_war << player1.deck.cards.slice!(0..2)
      spoils_of_war << player2.deck.cards.slice!(0..2)
    elsif type == :mutually_assured_destruction
      player1.deck.cards.slice!(0..2)
      player2.deck.cards.slice!(0..2)
    end
  end

  def award_spoils(winner)
    winner.deck.cards << spoils_of_war
    winner.deck.cards.flatten!
  end
end