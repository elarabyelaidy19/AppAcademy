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
end 





