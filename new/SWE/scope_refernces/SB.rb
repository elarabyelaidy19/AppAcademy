def bubble_sort(arr) 
    sorted = false 

    while !sorted  
        sorted = true 
        (0...arr.length-1).each do |i| 
            if(arr[i] > arr[i+1]) 
                arr[i], arr[i+1] = arr[i+1], arr[i] 
                sorted = false 
            end 
        end 
    end  
    arr
end  

# print bubble_sort([2,1,7,5,8]) 

h = "i can not be accessed in method" 

$glo = "i can be accessed anywhere but use me carfully"
CON = "i can be refernced anywhere but i can not be reassigned, maybe mutated!"
def hello 
    puts $glo 
    puts CON
    puts h 
end 

CON = "test"
puts h 
puts hello