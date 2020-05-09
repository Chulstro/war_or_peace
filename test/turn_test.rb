require 'minitest/autorun'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'

class TurnTest < Minitest::Test

  def setup
    @card1 = Card.new(:heart, 'Jack', 11)
    @card2 = Card.new(:heart, '10', 10)
    @card3 = Card.new(:heart, '9', 9)
    @card4 = Card.new(:diamond, 'Jack', 11)
    @card5 = Card.new(:heart, '8', 8)
    @card6 = Card.new(:diamond, 'Queen', 12)
    @card7 = Card.new(:heart, '3', 3)
    @card8 = Card.new(:diamond, '2', 2)
    @card9 = Card.new(:diamond, "8", 8)
    @deck1 = Deck.new([@card1, @card2, @card5, @card8])
    @deck2 = Deck.new([@card3, @card4, @card6, @card7])
    @deck3 = Deck.new([@card4, @card3, @card6, @card7])
    @deck4 = Deck.new([@card4, @card3, @card9, @card7])
    @player1 = Player.new('Megan', @deck1)
    @player2 = Player.new('Aurora', @deck2)
    @player3 = Player.new("Jen", @deck3)
    @player4 = Player.new("John", @deck4)
    @turn = Turn.new(@player1, @player2)
  end

  def test_players_and_spoils

    assert_equal @player1, @turn.player1
    assert_equal @player2, @turn.player2
    assert_equal [], @turn.spoils_of_war
  end

  def test_turn_pathway

    assert_equal :basic, @turn.type

  end

  def test_winning_conditions

    assert_equal @turn.winner, @player1
  end

  def test_card_piling
    @turn.pile_cards

    assert_equal [@card1, @card3], @turn.spoils_of_war
  end

  def test_awarding_spoils
    winner = @turn.winner
    @turn.pile_cards
    @turn.award_spoils(winner)

    assert_equal [@card2, @card5, @card8, @card1, @card3], @player1.deck.cards
  end

  def test_war_pathway
    @turn2 = Turn.new(@player1, @player3)

    assert_equal :war, @turn2.type
    assert_equal @player3, @turn2.winner
  end

  def test_war_pathway_spoils
    @turn2 = Turn.new(@player1, @player3)
    @turn2.pile_cards
    @turn2.award_spoils(@player3)

    assert_equal [@card7, @card1, @card2, @card5, @card4, @card3, @card6], @player3.deck.cards
  end

  def test_mutual_destruction_type
    @turn3 = Turn.new(@player1, @player4)

    assert_equal :mutually_assured_destruction, @turn3.type
  end

  def test_mutual_destruction_spoils
    @turn3 = Turn.new(@player1, @player4)
    assert_equal "No Winner", @turn3.winner
    @turn3.pile_cards

    assert_equal [], @turn3.spoils_of_war
    assert_equal [@card8], @player1.deck.cards
  end
end
