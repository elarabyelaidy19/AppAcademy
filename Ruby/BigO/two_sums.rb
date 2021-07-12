def bad_two_sum?(arr, target_sum) 
  (0..arr.length - 1).each do |i| 
    (i+1..arr.length - 1).each do |j|
      return true if arr[i] + arr[j] == target_sum 
    end 
  end 
  false 
end 


p bad_two_sum?([3, 4, 2, 5], 5) 
