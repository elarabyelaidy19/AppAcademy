# some?
# Write a method some? that accepts an array and a block as arguments. 
# The method should return a boolean  indicating whether or not  at least one of the  elements of the array returns true
# when given to the block.
# Solve this using Array#each

def some?(array, &prc)
  array.each do |ele|
    return true if prc.call(ele)
  end 
  false 
end 


# exactly?
# Write a method exactly? that accepts an array, a number (n), and a block as arguments.
# The method should return a boolean indicating whether
# or not there are exactly n elements that return true when given to the block. 
# Solve this using Array#each.

# p exactly?(['A', 'b', 'C'], 2) { |el| el == el.upcase }         # true
# p exactly?(['A', 'B', 'C'], 2) { |el| el == el.upcase }         # false


def exactly?(array, n, &prc)
  count = 0 
  array.each do |ele|
    count += 1 if prc.call(ele)
  end 
  count == n 
end 


# filter_out
# Write a method filter_out that accepts an array and a block as arguments.
# The method should return a new array where elements of the original array are removed 
# if they return true when given to the block.
# Solve this using Array#each.

# p filter_out([10, 6, 3, 2, 5 ]) { |x| x.odd? }      # [10, 6, 2]
# p filter_out([1, 7, 3, 5 ]) { |x| x.odd? }          # []

def filter_out(array, &prc)
  array = []

  array.each do |ele|
    array << ele if prc.call(ele) == false 
  end 
  array
end 


# at_least?
# Write a method at_least? that accepts an array, a number (n), and a block as an arguments.
# The method should return a boolean indicating whether or not at least n elements of the array return true when 
# given to the block.
# Solve this using Array#each.

def at_least?(array, n, &prc)
  count = 0 
  array.each do |ele|
    count += 1 if prc.call(ele)
  end 
  count >= n 
end 

