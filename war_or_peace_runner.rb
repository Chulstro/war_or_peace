require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
cards = []
cards << card1 = Card.new(:heart, 'Ace', 14)
cards << card2 = Card.new(:heart, 'King', 13)
cards << card3 = Card.new(:heart, 'Queen', 12)
cards << card4 = Card.new(:heart, 'Jack', 11)
cards << card5 = Card.new(:heart, '10', 10)
cards << card6 = Card.new(:heart, '9', 9)
cards << card7 = Card.new(:heart, '8', 8)
cards << card8 = Card.new(:heart, '7', 7)
cards << card9 = Card.new(:heart, '6', 6)
cards << card10 = Card.new(:heart, '5', 5)
cards << card11 = Card.new(:heart, '4', 4)
cards << card12 = Card.new(:heart, '3', 3)
cards << card13 = Card.new(:heart, '2', 2)
cards << card14 = Card.new(:diamond, 'Ace', 14)
cards << card15 = Card.new(:diamond, 'King', 13)
cards << card16 = Card.new(:diamond, 'Queen', 12)
cards << card17 = Card.new(:diamond, 'Jack', 11)
cards << card18 = Card.new(:diamond, '10', 10)
cards << card19 = Card.new(:diamond, '9', 9)
cards << card20 = Card.new(:diamond, '8', 8)
cards << card21 = Card.new(:diamond, '7', 7)
cards << card22 = Card.new(:diamond, '6', 6)
cards << card23 = Card.new(:diamond, '5', 5)
cards << card24 = Card.new(:diamond, '4', 4)
cards << card25 = Card.new(:diamond, '3', 3)
cards << card26 = Card.new(:diamond, '2', 2)
cards << card27 = Card.new(:spade, 'Ace', 14)
cards << card28 = Card.new(:spade, 'King', 13)
cards << card29 = Card.new(:spade, 'Queen', 12)
cards << card30 = Card.new(:spade, 'Jack', 11)
cards << card31 = Card.new(:spade, '10', 10)
cards << card32 = Card.new(:spade, '9', 9)
cards << card33 = Card.new(:spade, '8', 8)
cards << card34 = Card.new(:spade, '7', 7)
cards << card35 = Card.new(:spade, '6', 6)
cards << card36 = Card.new(:spade, '5', 5)
cards << card37 = Card.new(:spade, '4', 4)
cards << card38 = Card.new(:spade, '3', 3)
cards << card39 = Card.new(:spade, '2', 2)
cards << card40 = Card.new(:club, 'Ace', 14)
cards << card41 = Card.new(:club, 'King', 13)
cards << card42 = Card.new(:club, 'Queen', 12)
cards << card43 = Card.new(:club, 'Jack', 11)
cards << card44 = Card.new(:club, '10', 10)
cards << card45 = Card.new(:club, '9', 9)
cards << card46 = Card.new(:club, '8', 8)
cards << card47 = Card.new(:club, '7', 7)
cards << card48 = Card.new(:club, '6', 6)
cards << card49 = Card.new(:club, '5', 5)
cards << card50 = Card.new(:club, '4', 4)
cards << card51 = Card.new(:club, '3', 3)
cards << card52 = Card.new(:club, '2', 2)

deck1 = cards.shuffle.slice!(1..26)
deck2 = cards.shuffle.slice!(1..26)

player1_deck = Deck.new(deck1)
player2_deck = Deck.new(deck2)

player1 = Player.new("John", player1_deck)
player2 = Player.new("Jen", player2_deck)

puts "Welcome to War! (or Peace) This game will be played with 52 cards."
puts "The players today are #{player1.name} and #{player2.name}."
puts "Type GO to start the game!"
start = gets.chomp
require 'pry'; binding.pry
