
# swapping elements 


array = ["a", "b", "c", "d"]    # let's swap "a" and "b"
temp  = array[0]  # save a copy of the first ele
array[0] = array[1]  # overwrite the first ele with the second ele
array[1] = temp    # overwrite the second ele with the first ele copy             
p array          # => ["b", "a", "c", "d"]

# swapping in ruby 

array = ["a", "b", "c", "d"]
array[0], array[1] = array[1], array[0] # short-hand swap



# Bubble sort ruby Implementation 

def bubble_sort(array)
  sorted = false 
  while !sorted 
    sorted = true 


    (0...array.length-1).each do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        sorted = false 
      end 
    end 
  end 
  array 
end 


array = [2, 8, 5, 2, 3]
p bubble_sort(array)
