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
