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


def censor(s, arr) 
    words = s.split(" ") 
    new_words = words.map do |w| 
        if arr.include?(w.downcase) 
            replace(w) 
        else  
            w 
        end
    end 

    new_words.join(" ") 
    
end 

def replace(s) 
    vowels = "aioueAIOUE"  
    s.each_char.with_index do |c, i| 
        if vowels.include?(c)  
            s[i] = "*" 
        end 
    end   
    s
end  


def power_of_two?(num) 
    (0..50).each do |n| 
        return true if 2**n == num 
    end 
    false
end 