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