class Desert  
  attr_accessor :type, :amount  

  def initialize(type, amount) 

    raise 'Amount must nba a number' unless amount.is_a?(Integer) 
    @amount = amount 
    @type = amount > 100 ? "giant #{type}" : type 
  end 

