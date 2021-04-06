
class HumanPlayer

  attr_reader :mark

  def initialize(mark_value)
    @mark = mark_value
  end 

  def get_position
    puts "player #{mark.to_s}, enter enter two numbers representing a position in the format `row col` "
    pos = gets.chomp.split(' ').map(&:to_i)
    raise " sorry that is was invalid" if pos.length != 2 
    pos 
  end 
end 
