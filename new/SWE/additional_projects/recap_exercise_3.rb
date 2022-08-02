# General Problems

def no_dupes?(arr)
    # arr.select { |n| arr.count(n) == 1}      
    h = arr.inject(Hash.new(0)) { |h, k| h[k]+=1; h}
    h.keys.select { |key| h[key] == 1} 
end

=begin p no_dupes?([1,2,2,1,1,3,1,4])
p no_dupes?([true, true, true])
=end

def no_consecutive_repeats?(arr) 
    0.upto(arr.length-1).each do |i| 
        return false if arr[i] == arr[i+1] 
    end 
    true 
end

#p no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])     # => false
#p no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])     # => true
#p no_consecutive_repeats?([10, 42, 3, 7, 10, 3])              # => true
#p no_consecutive_repeats?([10, 42, 3, 3, 10, 3])              # => false
#p no_consecutive_repeats?(['x'])                              # => true



def char_indices(str)
    indices = Hash.new { |h, k| h[k] = [] } 

    str.each_char.with_index do |c, i| 
        indices[c] << i 
    end 
    indices
end

#p char_indices('missisippi')


def longest_streak(str)
    so_far = "" 
    max = "" 
    (0...str.length).each do |i|
        str[i-1] == str[i] ? so_far += str[i] : so_far = str[i]
        max = so_far if so_far.length >= max.length
    end 
    max
end

#p longest_streak("abbbsssssddddd")


def bi_prime?(num)
    primes = prime_factors(num) 
    factors = [] 
    primes.any? do |pri| 
        b = num / pri * 1.0
        primes.include?(b)  
    end     
end

def prime?(num)
    (2...num).each do |n| 
        return false if num % n == 0 
    end 
    true
end

def prime_factors(num)
    (2..num).select { |n| num % n == 0 && prime?(n) }
end

p prime_factors(14)
p bi_prime?(24)


def vigenere_cipher(message, keys)
    alph = ("a".."z").to_a 
    encrypted = "" 
    message.each_char.with_index do |c, i| 
        idx = alph.index(c) 
        key = keys[i % keys.length]
        new_idx = idx +  key 
        encrypted += alph[new_idx%26] 
    end
    encrypted
end

p vigenere_cipher("toerrishuman", [1,2])


def vowel_rotate(str)
    vowels = "aioue" 
    new_str = str[0..-1] 
    vowel_idxs = (0...str.length).select { |i| vowels.include?(str[i]) }  
    new_idxs = vowel_idxs.rotate(-1) 
    vowel_idxs.each_with_index do |vowel_idx, i| 
        new_vowel = str[new_idxs[i]] 
        new_str[vowel_idx] = new_vowel 
    end 
    new_str
end

p vowel_rotate("oranges")

# Proc Problems

class String
    def select(&prc)
        res = ""
        self.each_char do |c| 
            res += c if prc.call(c) 
        end 
        res
    end

    def map!(&prc)
        self.each_char.with_index do |c, i| 
            self[i] = c if prc.call(c, i) 
        end 
    end
end

p "app academy".select { |c| !"aioue".include?(c) }

# Recursion Problems

def multiply(a, b)
    return 0 if b == 0 
    mul = multiply(a, b-1)   
    return a + mul
end

#p multiply(3 , 2) 

def lucas_sequence(n)
    return [] if n == 0
    return [2] if n == 1 
    return [2, 1] if n == 2 
    seq = lucas_sequence(n-1)
    seq << seq[-1] + seq[-2]
    seq
end

#p lucas_sequence(4)


def prime_factorization(num)
   
end 


