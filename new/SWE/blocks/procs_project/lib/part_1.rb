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


def my_count(arr, &proc) 
    count = 0 
    arr.each do |ele| 
        count += 1 if proc.call(ele) 
    end 
    count
end 


def my_any?(arr, &proc)
    arr.each do |ele| 
        return true if proc.call(ele) 
    end 
    false
end 

def my_all?(arr, &proc) 
    arr.each do |ele| 
        return false if !proc.call(ele) 
    end 
    true
end 

def my_none?(arr, &proc) 
    arr.each do |ele| 
        return false if proc.call(ele) 
    end 
    true
end 

