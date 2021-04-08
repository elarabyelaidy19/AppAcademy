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

# Write my_zip to take any number of arguments. It should return a new array 
# containing self.length elements. Each element of the new array should
# be an array with a length of the input arguments + 1 and contain the merged 
# elements at that index.If the size of any argument is less than self, nil is returned for that location.


def my_zip(*arrays)
  zipped = [] 

  self.length.times do |i| 
    subzip = [self[i]]
    
    arrays.my_each do |array| 
      subzip << array[i]  
    end 

    zipped << subzip 
  end 
  zipped 
end 

# My Rotate
# Write a method my_rotate that returns a new array containing all the elements
# of the original array in a rotated order. By default, the array should rotate 
# by one element. If a negative value is given, the array is rotated in the opposite direction.


def my_rotate(positions = 1) 
  split_idx = positions % self.length 

  self.drop(split_idx) + self.take(split_idx) 
end 



# My Join
# my_join returns a single string containing all the elements of the array,
# separated by the given string separator.
# If no separator is given, an empty string is used. 

def my_join(separator = "") 
  join = "" 

  self.length.times do |i| 
    join += self[i] 
    join += separator unless i == self.length - 1 
  end 
  join 
end 







  










