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

def perfect_number?(num)
  aliquot_sum(num) == num 
end 

def ideal_numbers(n)
  array = []

  i = 1
  while array.length < n
    array << i if perfect_number(i)
    i += 1
  end 

  array
end 
