require './Board.rb'
require './HumanPlayer.rb' 

class Game 
  def initialize(n, *marks)
    @players = marks.map { |mark| HumanPlayer.new(mark) }
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
