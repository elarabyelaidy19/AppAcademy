def is_prime?(number)

  (2...number).each do |factor|
    return false if number % factor == 0
  end 

  true
end 

#======================================

require "byebug"  # define byebug


def avg(a, b)
  sum = a + b
  sum / 2.0
end 

debugger  # begining debugger mode 
first_result = avg(37, 13)
second_result = first_result + 12

p second_result 

#===============================================


