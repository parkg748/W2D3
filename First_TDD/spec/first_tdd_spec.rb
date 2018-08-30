require 'first_tdd.rb'

RSpec.describe Array do
  describe "#my_uniq" do
    subject(:arr) { Array.new([1,2,1,3,3]) }
    
    it 'returns only uniq elements' do
      expect(arr.my_uniq).to eq(arr.uniq)
    end
  end
  
  describe "#two_sum" do
    subject(:arr) { Array.new([-1,0,2,-2,1]) }
    
    it 'returns indices when elements sum to zero' do
      expect(arr.two_sum).to eq([[0,4],[2,3]])
    end
  end
  
  describe "#my_transpose" do
    subject(:arr) { Array.new([[0,1,2],[3,4,5],[6,7,8]]) }
    
    it 'transposes the nested array' do
      expect(arr.my_transpose).to eq([[0,3,6],[1,4,7],[2,5,8]])
    end
  end
  
  describe "#stock_picker" do
    subject(:arr) {Array.new([3, 1, 0, 4, 6, 9])}
    it 'returns the most profitable days' do
      expect(arr.stock_picker).to eq([2,5])
    end
  end
end