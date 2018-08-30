class Array
  def my_uniq
    result = []
    self.each { |x| result << x unless result.include?(x) }
    result
  end
  
  def two_sum
    result = []
    (0...self.length - 1).each do |num1|
      (num1 + 1...self.length).each do |num2|
        result << [num1, num2] if self[num1] + self[num2] == 0
      end
    end
    result
  end
  
  def my_transpose
    result = Array.new(self.length) { Array.new(self.length) }
    self.each_with_index do |row, idx1|
      row.each_with_index do |col, idx2|
        result[idx1][idx2] = self[idx2][idx1]
      end
    end
    result
  end

  def stock_picker
    max_result = nil
    max_number = 0
    
    idx_arr = self.map.with_index { |x,i| i }
    idx_arr.combination(2).each do |x|
      if self[x[1]] - self[x[0]] > max_number
        max_result = x
        max_number = self[x[1]] - self[x[0]]
      end
    end
    return max_result
  end

  

end