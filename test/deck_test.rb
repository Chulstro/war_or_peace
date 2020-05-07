require 'minitest/autorun'
require './lib/deck'
require './lib/card'

class DeckTest < Minitest::Test # Whatever this means

  def test_card_array_exists
    card1 = Card.new(:diamond, "Queen", 12)
    card2 = Card.new(:spade, "3", 3)
    card3 = Card.new(:heart, "Ace", 14)
    cards = []
    cards << card1
    cards << card2
    cards << card3

    deck = Deck.new(cards)

    assert_equal deck.cards, cards
  end

  def test_cards_rank
    card1 = Card.new(:diamond, "Queen", 12)
    card2 = Card.new(:spade, "3", 3)
    card3 = Card.new(:heart, "Ace", 14)
    cards = []
    cards << card1
    cards << card2
    cards << card3

    deck = Deck.new(cards)

    assert_equal deck.rank_of_card_at(0), 12
  end

  def test_high_ranking_array
    card1 = Card.new(:diamond, "Queen", 12)
    card2 = Card.new(:spade, "3", 3)
    card3 = Card.new(:heart, "Ace", 14)
    cards = []
    cards << card1
    cards << card2
    cards << card3

    deck = Deck.new(cards)

    assert_equal deck.high_ranking_cards.length, 2
  end

  def test_it_calculates_percent
    card1 = Card.new(:diamond, "Queen", 12)
    card2 = Card.new(:spade, "3", 3)
    card3 = Card.new(:heart, "Ace", 14)
    cards = []
    cards << card1
    cards << card2
    cards << card3

    deck = Deck.new(cards)
    deck.high_ranking_cards

    assert_equal deck.percent_high_ranking, 66.67
  end

  def test_remove_card_and_update_deck
    card1 = Card.new(:diamond, "Queen", 12)
    card2 = Card.new(:spade, "3", 3)
    card3 = Card.new(:heart, "Ace", 14)
    cards = []
    cards << card1
    cards << card2
    cards << card3

    deck = Deck.new(cards)

    assert_equal deck.remove_card, card1
    assert_equal deck.cards.count, 2
  end

  def test_if_card_added
    card1 = Card.new(:diamond, "Queen", 12)
    card2 = Card.new(:spade, "3", 3)
    card3 = Card.new(:heart, "Ace", 14)
    cards = []
    cards << card1
    cards << card2
    cards << card3

    deck = Deck.new(cards)

    card4 = Card.new(:Club, "4", 4)
    deck.add_card(card4)

    assert_equal 4, deck.cards.count


  end

end
