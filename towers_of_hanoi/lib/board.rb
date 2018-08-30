require_relative 'player'

class Board
  attr_accessor :pegs
  def initialize  
    @pegs = Array.new(3) {Array.new(3)}
    # @player = Player.new("Grace")
    
    
  end
  
  def start_pegs
    @pegs[0] = [1,2,3]
  end
  
  def render
    @pegs.each_with_index do |el,idx1|
      el.each_with_index do |spot,idx2|
        if @pegs[idx2][idx1].nil?
          print "X"
        else
          print @pegs[idx2][idx1]
        end
      end
      print "\n"
    end
  end
  
  def move(input)
    position_to = nil
    i = 0
    until i == @pegs.length
      if @pegs[input[1]][i].nil?
        position_to = i
        break
      end
      i += 1
    end
    if !valid_move?(input)
      get_input 
    end
    @pegs[input[0]][0], @pegs[input[1]][position_to] = @pegs[input[1]][position_to], @pegs[input[0]][0]
  end
  
  def valid_move?(input)
    @pegs[input[1]].any? { |x| x.nil? } && @pegs[input[1]].reject { |x| x.nil? }.last > @pegs[input[0]]
  end
end