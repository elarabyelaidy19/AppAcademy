def average(a, b)  
    return (a + b) / 2.0
end  


def average_array(arr) 
    arr.sum / arr.length.to_f
end 

def repeat(str, num) 
    str * num 
end 

def yell(str) 
    str.upcase! + "!"
end  

def  alternating_case(sent)
    strs = sent.split(" ") 
    strs.each_with_index do |s, i| 
        s.upcase! if i.even?  
        s.downcase! if i.odd? 
    end 
    strs.join(' ') 
end  

