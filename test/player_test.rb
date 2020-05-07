require 'minitest/autorun'
require './lib/card'
require './lib/deck'
require './lib/player'


class PlayerTest < Minitest::Test

  def test_player_exists
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    deck = Deck.new([card1, card2, card3])

    player = Player.new('Clarisa', deck)

    assert_equal "Clarisa", player.name
    assert_equal deck, player.deck
  end

  def test_if_lost
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    deck = Deck.new([card1, card2, card3])

    player = Player.new('Clarisa', deck)

    assert_equal false, player.has_lost?
  end

  def test_if_card_removed
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    deck = Deck.new([card1, card2, card3])

    player = Player.new('Clarisa', deck)
    player.deck.remove_card

    assert_equal 2, player.deck.cards.count
  end

  def test_deck_is_empty
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    deck = Deck.new([card1, card2, card3])

    player = Player.new('Clarisa', deck)
    player.deck.remove_card
    player.deck.remove_card
    player.deck.remove_card

    assert_equal 0, player.deck.cards.count
  end
end
