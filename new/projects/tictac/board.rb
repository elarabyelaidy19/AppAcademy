class Board 

    def initialize
        @grid = Array.new(3) { Array.new(3, '_') }
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
            0 <= i && i < @grid.length
        end 
    end 
    
    def empty?(pos) 
       self[pos] == '_'
    end 

    def place_mark(pos, mark) 
        raise 'this pos not valid' if (!valid?(pos) || !empty?(pos))  
        self[pos] = mark
    end 
    
    
    def print
        @grid.each { |array| p array.join(' ') }
    end 

    def win_row?(mark) 
        @grid.any? { |row| row.all?(mark) }
    end 
    
    def win_col?(mark) 
        @grid.transpose.any? { |col| col.all?(mark)}
    end 

    def win_diagonal?(mark) 
        left_to_right = (0...@grid.length).all? do |i| 
            pos = [i, i] 
            self[pos] == mark
        end 

        right_to_left = (0...@grid.length).all? do |i| 
            row = i  
            col = @grid.length-1 - i  
            pos = [row, col] 
            self[pos] == mark 
        end 

        left_to_right || right_to_left 
    end 

    def win?(mark)
        win_col?(mark) || win_row?(mark) || win_diagonal?(mark)
    end 

    def empty_positions?
        indices = (0...@grid.length).to_a 
        poss = indices.product(indices) 
        poss.any? { |pos| empty?(pos) } 
    end 
end 
