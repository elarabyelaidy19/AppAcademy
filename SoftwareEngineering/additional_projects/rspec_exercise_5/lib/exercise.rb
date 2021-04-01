def zip(arrays)
  length = arrays.first.length

  (0...length).map do |i|
    arrays.map { |array| array[i] }
  end 
end 

def prizz_proc(array, prc_1, prc_2)
  array.select do |ele|
    (prc_1.call(ele) && !prc_2.call(ele)) || (!prc_1.call(ele) && prc_2.call(ele) )
  end 
end 

def (*arrays)
  length = arrays.map(&:length).max

  (0...length).map do |i|
    arrays.map { |array| array[i] }
  end 
end 

def maximum(array, &prc)
  return ni if array.empty? 
  max = array.first
  array.each do |ele|
    max = ele if prc.call(ele) >= prc.call(max)
  end 

  max 
end 

def my_group_by(array, &prc)
  groups = Hash.new { |h,k| h[k] = [] }
  array.each do |ele|
    key = prc.call(ele)
    groups[key] << ele 
  end 

  groups
end 


def max_tie_breaker(array, prc, &prc)
  return nil if array.empty?
  max = array.first
  array.each do |ele|
    result_ele = prc.call(ele)
    result_max = prc.call(max)
    if result_ele > result_max
      max = ele
    elsif 
      result_ele == result_max && tie_breaker.call(ele) > tie_breaker.call(max)
      max = ele
    end 
  end 
  
  max 
end 


def vowel_indices(word)
  vowels = "aeiou"
  indices = []
  word.each_char.with_index do |char, idx|
    indices << idx if vowels.include?(char)
  end 

  indices
end 

def change_word(word)
  indices = vowel_indices(word)
  word[indices.first..indices.last]
end 


def silly_syllables(sentence)
  words = sentence.split(' ')
  new_words = words.map do |word|
    num_vowels = vowel_indices(word).length
    if num_vowels < 2
      word
    else
      change_word(word)
    end 
  end 

  new_words.join(' ')
end 








