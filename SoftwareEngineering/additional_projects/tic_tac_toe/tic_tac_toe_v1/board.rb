class Board  

  def initialize()
    @grid =Array.new(3) { Array.new(3, "-") } 
  end 

  def [](pos) 
    row, col = pos 
    @grid[row][col] 
  end 

  def []=(pos, val) 
    row, col = pos
    @grid[row][col] = val 
  end 

  def valid?(pos) 
    row, col = pos 
    pos.all? do |i| 
      i >= 0 && @grid.length > i 
    end 
  end 

  def empty?(pos) 
    self[pos] == "-"
  end 

  def place_mark(pos, mark) 
    raise "error" if !valid?(pos) || !empty?(pos)
    self[pos] = mark
  end 

  def print 
    @grid.each do |row|
      puts row.join('')
    end 
  end 

  def win_row?(mark) 
    @grid.any? { |row| row.all?(mark) }
  end 

  def win_col?(mark) 
    @grid.any? { |col| col.all?(mark) }
  end 

  def win_diagonal?(mark) 
    left_to_right = (0...@grid.legth).all? do |i|
      pos = [i, i] 
      self[pos] = mark 
    end 

    right_to_left = (0...@grid.legth - 1).all? do |i|
      row = i 
      col = @grid.legth -1 - i 
      pos = [row, col] 
      self[pos] == mark 
    end 

    right_to_left || left_to_right 
  end 

  def win?(mark) 
    win_diagonal?(mark) || win_col?(mark) || win_row(mark)
  end 

  def empty_positions?
    indices = (0...@grid.length).to_a 
    positions = indices.product(indices)
    positions.any? { |pos|empty?(pos) } 
  end 
end 







