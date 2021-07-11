def linear_search(array, val) 

  array.each_with_index do |i, el| 
    return i if array[i] == val 
  end 

  -1
end 

p linear_search([1, 3, 8, 6], 6) 
