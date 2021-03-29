#no_dupes?
#Write a method no_dupes?(arr) that accepts an array as an arg and returns an new 
#array containing the elements that were not repeated in the array.

def no_doups(array)
  count = Hash.new(0)

  array.each { |ele| count[ele] += 1}
  count.keys.select { |ele| count[ele] == 1}
end 

#no_consecutive_repeats?
#Write a method no_consecutive_repeats?(arr) that accepts an array as an arg.
#The method should return true ifan element never appears consecutively in the array;
#it should return false otherwise.


def no_consecutive_repeats(array)

  (0...array.length - 1).each do |idx|
    if array[i] == array[i + 1]
      return false 
    else 
      return true 
    end 
  end 
end 

#char_indices
#Write a method char_indices(str) that takes in a string as an arg. 
#The method should return a hash containing characters as keys. 
#The value associated with each key should be an array containing the indices where that character is found.

def char_indices(str)
  indices = Hash.new { |h, k| h[k] = [] }
  str.each_char.with_index do |char, idx|
    indices[char] << idx 
  end 
  indices
end 

## Examples
char_indices('mississippi')   # => {"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]}
char_indices('classroom')     # => {"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]}


#longest_streak
#Write a method longest_streak(str) that accepts a string as an arg. 
#The method should return the longest streak of consecutive characters in the string.
#If there are any ties, return the streak that occurs later in the string.

def longest_streak(str)
  current = ""
  longest = ""

  (0...length).each do |i|
    if str[i] == str[i - 1] || i == 0 
      current += str[i]
    else 
      current = str[i]
    end 

    if current.length >= longest.length
    longest = current
    end 
  end 

  longest 

end 


#bi_prime?
#Write a method bi_prime?(num) that accepts a number as an arg and returns a boolean indicating whether or not the number is a bi-prime.
#A bi-prime is a positive integer that can be obtained by multiplying two prime numbers.

def bi_prime?(num)
  prime_facts = prime_factors(num)

  prime_facts.any? do |a|
    b = num / a * 1.0 
    prime_facts.include?(b)
  end 

end 

end 

def prime?(num)
  if num < 2
    return false 
  end 

  (2...num).each do |i|
    if num % i == 0
      return false 
    else 
      return true 
    end 
  end 
end 

def prime_factors(num)
  (2..num).select { |i| num % i == 0 && prime?(i) }
end 



# vigenere_cipher
# A Caesar cipher takes a word and encrypts it by offsetting each letter in the word by a fixed number, called the key.
# Given a key of 3, for example: a -> d, p -> s, and y -> b.
# For example, if we encrypt "bananasinpajamas" with the key sequence 1, 2, 3, then the result would be "ccqbpdtkqqcmbodt":
# Message:  b a n a n a s i n p a j a m a s
# Keys:     1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1
# Result:   c c q b p d t k q q c m b o d t

# Write a method vigenere_cipher(message, keys) that accepts a string and a key-sequence as args, returning the encrypted message.
# Assume that the message consists of only lowercase alphabetic characters.

def vigenere_cipher(message, keys)
  
  alpha = ('a'..'z').to_a
  new_str = ''

  message.each_char.with_index do |char, idx|
    old_pos = alpha.index(char)
    new_pos = old_pos + keys[ idx % keys.length]
    new_str += alpha[new_pos % alpha.length]
  end 
  new_str
end 



# vowel_rotate
# Write a method vowel_rotate(str) that accepts a string as an arg and returns the string
# where every vowel is replaced with the vowel the appears before it sequentially in the original string.
# The first vowel of the string should be replaced with the last vowel.

def vowel_rotate(str)
 
  new_str = str[0..-1]
  vowels = "aeiou"

  vowel_idxs = (0...str.length).select { |i| vowels.include?(str[i]) }
  rotated_vowel_idxs = vowel_idx.rotate(-1)

  vowel_idxs.each_with_index do |vowel_idx, i|
    new_vowel = str[rotated_vowel_idxs[i]]
    new_str[vowel_idx] = new_vowel
  end 

  new_str
end  

