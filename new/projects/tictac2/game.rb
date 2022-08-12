require_relative 'board.rb' 
require_relative 'human_player.rb' 


class Game 
    def initialize(*marks, n) 
        @players = marks.map { |mark| HumanPlayer(mark) }  
        @current_player = @players.first
        @board = Board.new(n)  
    end 

    def switch_turn 
        @current_player = @players.rotate!.first
    end 
    
    
    def play
        while @board.empty_positions? 
            @board.print
            pos = @current_player.get_position 
            @board.place_mark(pos, @current_player.mark) 
            if @board.win?(@current_player.mark) 
                puts "game over"
                puts "player #{@current_player.mark.to_s} has  won" 
                return
            else 
                switch_turn 
            end 
        end 

        puts "Game Over!!" 
        puts "Draw"
    end 
end 