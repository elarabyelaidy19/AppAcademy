# quadratic time 
# quadratic space 

def my_min_1a(list) 
  min_num = nil 

  list.each do |num1| 
    dup_list = list.dup 
    dup_list.delete(num1) 
    min_num =  num1 if dup_list.all? { |num2| num2 > num1 } 
  end 
  min_num
end 



# quadratic time 
# constant space 

def my_min_1b(list) 
  list.each_with_index do |num1, i1| 
    min = true 
    list.each_with_index do |num2, i2| 
      next if i2 == i1 
      min = false if num2 < num1 
    end 
    return num1 if min
  end 
end 


# linear time 
# constant space  

def my_min_2(list) 
  min_num = list.first 

  list.each { |num| min_num = num if num < min_num } 
  min_num
end 

# cubic time 
# cubic space 

def largest_contiguous_subsum1(list)
  subs  = [] 

  list.each_with_index do |idx1| 
    (idx1..list.length - 1).each do |idx2| 
      subs << list[idx1..idx2] 
    end 
  end 

  subs.map { |sub| sub.inject(:+) }.max
end 


# linear time 
# constant space  

def largest_contiguous_subsum2(list)  

  largest = list.first 
  current = list.first 

  (1..list.length).each do |i| 
    current = 0 if current < 0 
    current += list[i] 
    largest = current if largest < current 
  end 

  largest
end 
