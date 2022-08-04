def element_count(array)
    array.tally 
end

def char_replace!(str, h) 
    str.each_char.with_index do |c, i| 
        str[i] = h[c] if h.has_key?(c) 
    end 
    str
end 


def product_inject(arr) 
    arr.inject(1) { |acc, mul| acc * mul } 
end 