class ComputerPlayer
  
  attr_reader :mark 

  def initialize(val)
    @mark = val 
  end 

  def get_position(legal_positions)
    choice = @legal_positions.sample
    print "computer #{self.mark} choose position #{choice.to_s} "
    choice
  end 
end 