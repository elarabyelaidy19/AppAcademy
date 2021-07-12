def first_anagram?(str1, str2) 
  all_anagrams(str1).include?(str2) 
end 

def all_anagrams(string) 
  return [string] if string.length <= 1 

  prev_anagrams = all_anagrams(string[0...-1]) 
  new_anagrams = [] 

  prev_anagrams.each do |anagram| 
    (0..anagram.length).each do |i| 
      new_anagrams << anagram.dup.insert(i, string[-1]) 
    end 
  end 

  new_anagrams
end 


