class Room
  def initialize(capacity)
    @capacity = capacity
    @occupants = []
  end 

  def capacity
    @capacity
  end 
  
  def occupants
    @occupants
  end 

  def full?
    if @occupants.length < @capacity
      return false 
    end 

    if @occupants.length == @capacity
      return true 
    end 
  end 

  def available_space 
   @capacity -  @occupants.length
  end 

  def add_occupant(person_name)
    if !full?
      @occupants << person_name
      return true 
    else 
      @occupants
      return false 
    end 
  end 

  

end
