require './Board.rb'
require './HumanPlayer.rb' 

class Game 
  def initialize(mark_1, mark_2)
    @player_1 = Game.new(mark_1)
    @player_2 = Game.new(mark_2)
    @board = Board.new 
    @current_player = @player_1
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
        puts 'game over'
        puts @current_player.mark.to_s + 'has WON' 
        return 
      else 
        switch_turn
      end 
    end 
    
    puts 'game over' 
    puts 'DRAW'
  end 
end 

