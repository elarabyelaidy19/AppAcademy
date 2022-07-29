class Board
    attr_reader :size, :grid
    def initialize(n) 
        @grid = Array.new(n) {Array.new(n, :N)} 
        @size = n**2
    end 

    def [](a) 
        row = a[0] 
        col = a[1]
        @grid[row][col]
    end 

    def []=(pos, val) 
        row = pos[0] 
        col = pos[1]  
        @grid[row][col] = val
    end 

    def num_ships 
        # @grid.flatten.count(:S) 
        count = 0 
        @grid.each do |row| 
            row.each_index do |col| 
                count += 1 if row[col] == :S 
            end 
        end 
        count 
    end 

    def attack(pos) 
        if self[pos] == :S 
            self[pos] = :H 
            p 'you sunk my battelship!'  
            true
        else 
            self[pos] = :X 
            false
        end 
    end 

    def place_random_ships
        num = (@size * 0.25).floor
        while self.num_ships < num 
            row = rand(0...@grid.length) 
            col = rand(0...@grid.length) 
            pos = [row, col] 
            self[pos] = :S 
        end 
        
    end 

    def hidden_ships_grid
        @grid.map do |row| 
            row.map do |ele| 
                if ele == :S 
                    ele = :N 
                else 
                    ele 
                end 
            end 
        end 
    end 

    def self.print_grid(grid) 
        grid.each do |row| 
           puts row.join(' ')
        end 
    end 
    def cheat
        Board.print_grid(@grid) 
    end 

    def print
        Board.print_grid(hidden_ships_grid)
    end 

end
