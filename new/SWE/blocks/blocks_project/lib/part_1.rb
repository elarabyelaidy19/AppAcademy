def select_even_nums(arr) 
    arr.select { |n| n.even? }
end  

def reject_puppies(arr) 
    arr.reject { |dog| dog["age"] <= 2 }
end  

def count_positive_subarrays(arr) 
    arr.count { |arr| arr.sum.positive? }
end 


def aba_translate(str) 
    vowel = "aioue" 
    res = "" 
    str.each_char do |c| 
        if vowel.include?(c) 
            res += "#{c}b#{c}" 
        else 
            res += c  
        end 
    end 
    res
end 


def aba_array(arr) 
    arr.map { |ele| aba_translate(ele) }
end 