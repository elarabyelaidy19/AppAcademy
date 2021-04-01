def proper_factors(num)
  proper = []

  (1...num).each do |ele|
    proper << ele if num % ele == 0
  end 
  proper 
end 

def aliquot_sum(num)
  proper_factors(num).sum
end 