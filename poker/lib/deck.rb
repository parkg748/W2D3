require_relative 'card'
# SUIT = ['club','spade','heart','diamond']

class Deck
  attr_reader :deck

  def initialize
    @deck = []
    # create_deck
    # shuffle_deck
  end
  
  def create_deck
    Card::SUIT.each do |s|
      Card::TYPES.each do |t|
        # begin
        #   Card.new(s,t)
        # rescue
        #   puts "Input the correct suit & type"
        #   retry
        # end
        @deck << Card.new(s,t)
      end
    end
  end
  
  def shuffle_deck
    @deck.shuffle!
  end
end