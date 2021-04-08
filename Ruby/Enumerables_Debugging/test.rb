 require "byebug"

(1..100).each do |num|
  square = num ** 2
  half = num / 2.0
  debugger
end 



#=  ==========    === =====================

exp(b, n) = b * exp(b, n - 1) 
# naming descriptively 
exponent(base, power) = base * exponent(base, power - 1) 

# then 
smaller_exponent = power - 1 
exponent(base, power) = base * exponent(base, smaller_exponent)

#then 
base_to_the_smaller_exponet = exponent(base, smaller_exponent)
exponent(base, power) = base * base_to_the_smaller_exponet 



