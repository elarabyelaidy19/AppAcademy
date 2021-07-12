# quadratic time 
# constant time
def bad_two_sum?(arr, target_sum) 
  (0..arr.length - 1).each do |i| 
    (i+1..arr.length - 1).each do |j|
      return true if arr[i] + arr[j] == target_sum 
    end 
  end 
  false 
end 


p bad_two_sum?([3, 4, 2, 5, 12], 17) 


# linearithmic time
# linear time 
def okay_two_sum_a?(arr, target_sum) 
  arr = arr.sort 
  i, j = 0, arr.length - 1 

  while j > i 
    case (arr[i] + arr[j]) <=> target_sum 
      when 0 
        return true 
      when -1 
        i += 1 
      when 1 
        j -= 1 
    end 
  end 
  false 
end 

p okay_two_sum_a?([2, 4, 6, 1, 8], 15)  # => false 



# linearithmic time 
# linear space 
def okay_two_sum_b?(arr, target_sum) 
  arr = arr.sort 

  arr.each_with_index do |el, i| 
    match_idx = arr.bsearch_index { |el2| (target_sum - el) <=> el2 } 
    return true if match_idx && match_idx != i 
  end 
  false 
end 





