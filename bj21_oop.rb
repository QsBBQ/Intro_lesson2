#1. Have a detailed requirements or specification in written form
#2. Extract major nouns -> classes
#3. Extract major verbs -> instance methods
#4. Group instance methods into classes

require 'pry'

class Card
  attr_accessor :suit, :value

  def initialize(s,fv)
    @suit = s
    @face_value = v
  end

  def pretty_output
    "This is the card! #{suit}, #{face_value}"
  end

end

class Deck
  attr_accessor :cards

  def initialize
    @card = []
    ['H', 'D', 'S', 'C'].each do |suit|
      ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].each do |face_value|
        @cards << Card.new(suit, face_value)
      end
    end
  end
  def scramble!
    cards.shuffle!
  end

  def deal
    cards.pop
  end

end

class Player
  attr_accessor :name
  def initialize(n)
    @name = n
  end

end

class Dealer

end

class Hand

end


class Blackjack
  #The idea is the class tying it all together for Blackjack
  attr_accessor :player, :dealer, :deck

  def initialize
    @player = Player.new("Bob")
    @dealer = Dealer.new
    @deck = Deck.new
  end

  def run

    
  end

end

#Blackjack.new.run




