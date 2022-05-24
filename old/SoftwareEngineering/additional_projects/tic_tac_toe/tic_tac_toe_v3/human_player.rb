
class HumanPlayer

  attr_reader :mark

  def initialize(val)
    @mark = val

  end 

  def get_position(legal_positions)
    pos = nil 
    puts "player #{mark.to_s}, enter two numbers representing a position in the format `row col` "
    pos = gets.chomp.split(' ').map(&:to_i)
    puts "#{pos} is not a valid position" if !legal_positions.include?(pos)
    raise " sorry that is was invalid" if pos.length != 2 
  end 
  
  pos 
end 


