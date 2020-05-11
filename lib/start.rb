require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'

class Start

  def initialize(time_limit)
    @time_limit = time_limit
  end

  def start
    while turn.player1.has_lost? || turn.player2.has_lost?
      winner = turn.winner
      turn.pile_cards
      turn.award_spoils(winner)
      require 'pry'; binding.pry
      if turn.type == :basic
        puts "#{turn.winner.name} won 2 cards"
      elsif turn.type == :war
        puts "WAR - #{turn.winner.name} won 6 cards"
      elsif turn.type == :mutually_assured_destruction
        puts "*mutally assured destruction* 6 cards removed from play"
      end
    end
  end
end
