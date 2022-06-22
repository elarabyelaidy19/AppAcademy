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

def substrings()