require 'minitest/autorun'
require './lib/deck'
require './lib/card'

class DeckTest < Minitest::Test

  def test_card_array_exists
    card1 = Card.new(:diamond, "Queen", 12)
    card2 = Card.new(:spade, "3", 3)
    card3 = Card.new(:heart, "Ace", 14)
    cards = []
    cards << [card1, card2, card3]

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
end
