require 'byebug'

class Card
  #debugger
  attr_reader :color, :suit, :type
  
  SUIT = ['♣︎','♠︎','♥︎','♦︎']
  TYPES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  
  def initialize(suit,type)
    raise ArgumentError if !SUIT.include?(suit) || !TYPES.include?(type)
    
    @color = pick_color
    @suit = suit
    @type = type
  end
  
  def pick_color
    # if @suit == 'heart' || @suit == 'diamond'
    if @suit == '♥︎' || @suit == '♦︎'
      :red
    else
      :black
    end
  end
  
  
end