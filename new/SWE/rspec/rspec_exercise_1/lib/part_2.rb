def hipsterfy(str) 
    str.reverse.sub(/[aioue]/, "").reverse
end  

def vowel_counts(str) 
    hash = Hash.new(0)
    vowels = "aioue" 
    str.chars.each do |c| 
        hash[c.downcase] += 1 if vowels.include?(c.downcase)
    end  
    hash
end 


def caesar_cipher(str, n) 
    alph =  ("a".."z").to_a 
    res = ""
    str.chars.each do |c| 
        if(alph.include?(c))
            old_index = alph.index(c) 
            new_index = old_index + n 
            res += alph[new_index % 26] 
        else  
            res += c  
        end  
    end  
    res
end 