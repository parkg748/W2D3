require_relative 'board'

class Player
  attr_reader :name
  
  def initialize(name)
    @board = Board.new
    @name = name
  end
  
  def get_input
    puts "What pile would you like to select the disc from and where would you like to go?"
    input = gets.chomp.scan(/\d+/).map(&:to_i)
  end
end