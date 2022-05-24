
class Passenger 

  def initialize(name)
    @name = name
    @flight_numbers = [] 
  end 

  def name
    @name  
  end 

  def has_flight?(flight_number)
    @flight_numbers.include?(flight_number.upcase)
  end 

  def add_flight(flight_number)
    has_flight?(flight_number) ? 'number is exit' : @flight_numbers << flight_number.upcase
  end 

end 





