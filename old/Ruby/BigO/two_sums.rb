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

# make two sum function using hashes 
def two_sum?(arr, target_sum) 
  complements = {} 

  arr.each do |el| 
    return true if complements[target_sum - el] 
    complements[el] = true 
  end 
  
  false
end 


def two_sum_indices(arr, target_sum) 
  complements = {} 

  arr.each_with_index do |el, i| 
    complement, j =complements[target_sum - el] 
    return [i, j] if complement 

    complements[el] = [el, i] 
  end 
  nil 
end 

def four_sum?(arr, target_sum) 

  hash = Hash.new 
  two_sum_hash = Hash.new 
  three_sum_hash = Hash.new 

  arr.each do |num| 
    return true if three_sum_hash[target_sum - num] 

    two_sum_hash.each_key do |key| 
      three_sum_hash[key + num] = true 
    end 

    hash.each_key do |key| 
      two_sum_hash[key + num| = true  
    end 

    hash[num] = true  
  end 

  false
   
end 



 

