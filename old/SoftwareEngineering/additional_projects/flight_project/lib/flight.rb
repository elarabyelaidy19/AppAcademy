require 'passenger' 

class Flight

  def initialize(flight_number, capacity) 
    @flight_number = flight_number
    @capacity = capacity
    @passengers = []
  end 

  def passengers 
    @passengers 
  end 

  def full?
    return true if @passengers.length == @capacity 
    return false if @passengers.length < @capacity
  end 

  def board_passenger(passenger) 
    if !self.full? && passenger.has_flight?(@flight_number) 
      @passengers << passenger 
    end 
  end 

  def list_passengers
    @passengers.map(&:name)
  end 

  def [](index) 
    @passengers[index] 
  end 

  def <<(passenger)
    self.board_passenger(passenger)
  end 


end 
