def partition(array, number)
  less = []
  greater = []

  array.each do |ele|
    if ele < number
      less << ele
    else 
       greater << ele 
    end 
  end 

  [less, greater]

end 

def merge(hash_1, hash_2)
  new_hash = {}

  hash_1.each  { |k, v| new_hash[k] = v }
  hash_2.each  { |k, v| new_hash[k] = v }
  new_hash

end 

def censor(sent, curse_words)
  words = sent.split(" ")

  new_words = words.map do |word|
    if curse_words.include?(word.downcase)
      star_vowels[word]
    else 
      word
    end 
  end 
  new_words.join(" ")

end 

def star_vowels(string)
  vowels = "aeiou"
  new_str = ""

  string.each_char do |char|
    if vowels.include?(char.downcase)
      new_str += "*"
    else 
      new_str += char
    end 
  end 

  new_str
end  


def power_of_two?(number)
  product = 1

  while product < number
    product *= 2
  end 

  number == product
end 


def palindrome?(string)
  string.each_char.with_index do |char, i|
    if string[i] != string[-i - 1]
      return false 
    end 
  end 

  true 
end 

def substrings(string)
  subs = []

  (0...string.length).each do |start_index|
    (start_index...string.length).each do |end_index|
      subs << string[start_index..end_index]
    end 
  end 

  subs  
end 

def palindrome_substrings(string)
  substrings(string).select { |substr| palindrome?(substr) && substr.length > 1 }
end 


