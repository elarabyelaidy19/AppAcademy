class TowersOfHanoiGame 

  def initialize 
    @stacks = [[3, 2, 1], 0, 0] 
  end 

  def play 
    

  end 

  def won? 
    @stacks[0].empty? && stacks[1..2].any?(&:empty?)
  end 