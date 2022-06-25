def my_map(arr, &proc) 
    mapped = [] 
    arr.each do |ele| 
        mapped << proc.call(ele) 
    end 
    mapped
end


def my_select(arr, &proc) 
    selected = [] 
    arr.each do |ele| 
        selected << ele if proc.call(ele) 
    end  
    selected
end 




