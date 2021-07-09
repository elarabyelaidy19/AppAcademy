class TowersOfHanoiGame 

  def initialize 
    @stacks = [[3, 2, 1], 0, 0] 
  end 

  def play 
    

  end 

  def won? 
    @stacks[0].empty? && stacks[1..2].any?(&:empty?)
  end 

  def valid_move?(from_tower, to_tower)
    return false unless [from_tower, to_tower].all? { |i| i.between(0, 2) } 
    
    !@stacks[from_tower].empty? && ( 
      @stacks[to_tower].empty? || 
      @stacks[to_tower].last > @stacks[from_tower].last 
    )
  end 

  def move(from_tower, to_tower) 
    raise "can not move from empty stack" if @stacks[from_tower].empty? 
    raise "cannot move to smaller disc" unless valid_move?(from_tower, to_tower) 
    @stacks[to_tower] << @stacks[from_tower].pop 
  end 

  def render
    'Tower 0:  ' + @stacks[0].join('  ') + "\n" +
      'Tower 1:  ' + @stacks[1].join('  ') + "\n" +
      'Tower 2:  ' + @stacks[2].join('  ') + "\n"
  end

  def display
    system('clear') 
    render 
  end 

  