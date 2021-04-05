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