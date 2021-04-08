class Array 

# My Each
# Extend the Array class to include a method named my_each that takes a block,
# calls the block on every element of the array, and returns the original array.
#  Do not use Enumerable's each method. I want to be able to write:

def my_each(&prc) 
  self.length.times do |i|
    prc.call(self[i])
  end 
  self 
end 

# My Select
# Now extend the Array class to include my_select that takes a block and returns a new
# array containing only elements that satisfy the block. Use your my_each method!

def my_select(&prc) 
  selects = [] 

  self.my_each do |i| 
    selects << i if prc.call(i) 
  end 
  selects
end 

# My Reject
# Write my_reject to take a block and 
# return a new array excluding elements that satisfy the block.

def my_reject(&prc) 
  selects = [] 

  self.my_select do |ele|
    selects << ele if !prc.call(ele) 
  end 

  selects
end 

# My Any
# Write my_any? to return true if any elements of the array satisfy the block and
# my_all? to return true only if all elements satisfy the block.

def my_any? 
  self.my_each do |ele|
    return true if prc.call(ele) 
  end 

  false 
end 

def my_all? 
  self.my_each do |ele|
    return false unless prc.call(ele) 
  end 

  true 
end 


# My Flatten
# my_flatten should return
# all elements of the array into a new, one-dimensional array. Hint: use recursion! 

def my_flatten
  flattened = [] 

  self.my_each do |ele| 
    if ele.is_a?(Array)
      flattened.concat(ele.my_flatten) 
    else 
      flattened << ele
    end 
  end 

    flattened 
end 


def 
  





