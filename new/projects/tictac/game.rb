require_relative 'board.rb' 
require_relative 'human_player.rb' 


class Game 
    def initialize(mark_1, mark_2) 
        @player_1 = HumanPlayer.new(mark_1) 
        @player_2 = HumanPlayer.new(mark_2) 
        @current_player = @player_1 
        @board = Board.new 
    end 

    def switch_turn 
        if @current_player == @player_1 
            @current_player = @player_2 
        else 
            @current_player = @player_1 
        end  
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