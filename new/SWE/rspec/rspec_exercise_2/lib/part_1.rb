def partition(arr, n) 
    s = [] 
    b = [] 
    arr.each do |num| 
        num < n ? s << num : b << num 
    end 
    [s, b] 
end


def merge(h1, h2) 
    h = {} 
    h2.each do |k, v| 
        h[k] = v 
    end 

    h1.each do |k, v| 
        next if h.has_key?(k)  
        h[k] = v
    end 
    h
end