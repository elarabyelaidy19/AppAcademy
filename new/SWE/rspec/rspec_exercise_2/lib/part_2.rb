def palindrome?(s) 
    l = 0; r = s.length-1 
    while(r >= l)  
        return false if s[l] != s[r] 
        l+=1; r-=1
    end 
    true 
end 

def palindrome?(s) 
    s.each_char.with_index do |c, i| 
        return false if s[i] != s[-i - 1] 
    end 
    true 
end 

def substrings(s) 
    res = []  
    l = s.length  
    (0...l).each do |i| 
        (i...l).each do |j| 
            res << s[i..j]
        end 
    end 
    res 
end  
puts substrings("jumb")




def palindrome_substrings(s) 
    strs = substrings(s) 
    res = []
    strs.each do |str| 
        res << str if palindrome?(str) && str.length > 1
    end
    res
end 