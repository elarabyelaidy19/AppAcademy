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
