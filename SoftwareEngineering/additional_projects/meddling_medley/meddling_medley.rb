# duos
# Write a method duos that accepts a string as an argument and returns
# the count of the number of times the same character appears consecutively in the given string.

def duos(str)
  count = 0

  (0...str.length -1 ) do |ele|
    count += 1 if str[i] == str [i + 1]
  end 
  count 
end 

# p duos('bootcamp')      # 1
# p duos('wxxyzz')        # 2

# sentence_swap# 
# Write a method sentence_swap that accepts a sentence and a hash as arguments. 
# The method should return a new sentence where every word is replaced with it's corresponding value in the hash.
# If a word does not exist as a key of the hash, then it should remain unchanged. 

# p sentence_swap('anything you can do I can do',
#     'anything'=>'nothing', 'do'=>'drink', 'can'=>'shall'
# ) # 'nothing you shall drink I shall drink'

# p sentence_swap('what a sad ad',
#     'cat'=>'dog', 'sad'=>'happy', 'what'=>'make'
# ) # 'make a happy ad'


def sentence_swap(sentence, hash)
 words = sentence.split(' ')
 new_words = []

 words.each do |word| 
  if hash.has_key?(word) 
    new_words << hash[word] 
  else
    new_words << word 
  end 
end 

new_words.join(' ')
end


# hash_mapped
# Write a method hash_mapped that accepts a hash, a proc, and a block.
# The method should return a new hash where each key is the result of the original key when given to the block.
# Each value of the new hash should be the result of the original values when passed into the proc. 


# double = Proc.new { |n| n * 2 }
# p hash_mapped({'a'=>4, 'x'=>7, 'c'=>-3}, double) { |k| k.upcase + '!!' }
# # {"A!!"=>8, "X!!"=>14, "C!!"=>-6}

# first = Proc.new { |a| a[0] }
# p hash_mapped({-5=>['q', 'r', 's'], 6=>['w', 'x']}, first) { |n| n * n }
# # {25=>"q", 36=>"w"}


def hash_mapped(hash, &blk, prc)
  new_hash = {}   
  
  hash.each do |key, val|
    new_hash[&blk.call(key)] = prc.call(val)
  end 
  new_hash
end 


# counted_characters
# Write a method counted_characters that accepts a string as an argument.
# The method should return an array containing the characters of the string that appeared more than twice. 
# The characters in the output array should appear in the same order they occur in the input string. 

def counted_characters(str) 
  count = Hash.new(0) 
  string.each_char { |char| count[char] += 1 }
  count.select { |char, num| num > 2 }.keys
end 
