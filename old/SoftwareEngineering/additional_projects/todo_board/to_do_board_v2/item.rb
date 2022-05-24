class Item
  def self.valid_date?(date)
       parts = date.split('-').map(&:to_i) 
       year, month, day = parts 
       return false if parts.length != 3 
       return false if !(0..12).include?(month)
       return false if !(0..31).include?(day)
       true 
  end 
 
  attr_reader :deadline, :done 
  attr_accessor :title, :description

  def initialize(title, deadline, description)
     @title = title
     @deadline = deadline
     @description = description
     raise "invalid date" if !Item.valid_date?(deadline)
     @done = false 
  end 

  def deadline=(deadline)
     raise 'invalid date' if !Item.valid_date?(new_deadline)
     @deadline = deadline
  end 

  def toggle
   @done = !@done
  end 
  
end 




