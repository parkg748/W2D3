require 'board.rb'
require 'player.rb'

RSpec.describe Board do 
  subject(:board) {Board.new}
  describe '#initialize' do
    
    it 'initializes pegs to a 3 x 3 matrix' do
      expect(board.pegs).to eq(Array.new(3) {Array.new(3)})
    end
  end
  
  describe '#start_pegs' do
    it 'initializes the start of the pegs' do
      board.start_pegs 
      expect(board.pegs[0]).to eq([1,2,3])
    end
  end
  
  describe '#render' do
    it 'renders the board in terminal' do
      board.render
      expect { board.render }.to output("XXX\nXXX\nXXX\n").to_stdout 
    end
  end
end