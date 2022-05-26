arr = [[1,1,2], [23,3,4,5], [1,2,3,4]] 
n = []
arr.each do |r| 
    r.each do |c| 
        n << c  
    end 
end 

# puts n  

sym = :hello 
sym2 = :hello 

puts sym.object_id 
puts sym2.object_id 


str = "hello" 
str2 = "hello"
puts sym.object_id == sym2.object_id # true 
puts sym == sym2  # true 

puts str.object_id == str2.object_id # false compare object itself
puts str == str2 # true compare literal 



def splat(arg1, arg2, *args) 
    puts arg1 
    puts arg2 
    puts args[1] * args[2]
end     

print splat("h", "b") #  
print splat("h", "b", 3, 5, 6) 