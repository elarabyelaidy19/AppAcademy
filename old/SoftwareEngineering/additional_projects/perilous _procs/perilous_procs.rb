# some?
# Write a method some? that accepts an array and a block as arguments. 
# The method should return a boolean  indicating whether or not  at least one of the  elements of the array returns true
# when given to the block.
# Solve this using Array#each

def some?(array, &prc)
  array.each do |ele|
    return true if prc.call(ele)
  end 
  false 
end 


# exactly?
# Write a method exactly? that accepts an array, a number (n), and a block as arguments.
# The method should return a boolean indicating whether
# or not there are exactly n elements that return true when given to the block. 
# Solve this using Array#each.

# p exactly?(['A', 'b', 'C'], 2) { |el| el == el.upcase }         # true
# p exactly?(['A', 'B', 'C'], 2) { |el| el == el.upcase }         # false


def exactly?(array, n, &prc)
  count = 0 
  array.each do |ele|
    count += 1 if prc.call(ele)
  end 
  count == n 
end 


# filter_out
# Write a method filter_out that accepts an array and a block as arguments.
# The method should return a new array where elements of the original array are removed 
# if they return true when given to the block.
# Solve this using Array#each.

# p filter_out([10, 6, 3, 2, 5 ]) { |x| x.odd? }      # [10, 6, 2]
# p filter_out([1, 7, 3, 5 ]) { |x| x.odd? }          # []

def filter_out(array, &prc)
  array = []

  array.each do |ele|
    array << ele if prc.call(ele) == false 
  end 
  array
end 


# at_least?
# Write a method at_least? that accepts an array, a number (n), and a block as an arguments.
# The method should return a boolean indicating whether or not at least n elements of the array return true when 
# given to the block.
# Solve this using Array#each.

def at_least?(array, n, &prc)
  count = 0 
  array.each do |ele|
    count += 1 if prc.call(ele)
  end 
  count >= n 
end 



# every?
# Write a method every? that accepts an array and a block as arguments. 
# The method should return a boolean indicating whether or not all elements of the array return true when given to the block.
# Solve this using Array#each.

def every?(array, &prc)
  array.each do |ele|
    return false if !prc.call(ele)
  end 
  true 
end 


# at_most?
# Write a method at_most? that accepts an array, a number (n), and a block as arguments.
# The method should return a boolean indicating whether no more than n elements of the array return true when given to the block.
# Solve this using Array#each. 

def at_most(array, n, &prc)
  count = 0
  array.each do |ele| 
    count += 1 if prc.call(ele)
  end 
  count < n 
end 


# first_index
# Write a method first_index that accepts an array and a block as arguments. 
# The method should return the index of the first element of the array that returns true when given to the block. 
# If no element of returns true, then the method should return nil. 
# Solve this using Array#each.

def first_index(array, &prc)
  array.each do |ele, i| 
    return i if prc.call(ele)
  end 
  nil
end 


# Phase 2: The proc thickens.
# xnor_select
# Write a method xnor_select that accepts an array and two procs as arguments.
# The method should return a new array containing elements of the original array that either return true for 
# both procs or return false for both procs.

def xnor_select(array, prc_1, prc_2)
  selected = []
  array.each do |ele|
    selected << ele if prc_1.call(ele) == prc.call(ele)
  end 
  selected
end 


# filter_out!
# Rewrite your previous filter_out method to mutate the input array instead of returning a new array.
# That is, write a method filter_out! that accepts an array and a block as args. 
# The method should remove elements of the input array that return true when given to the block.
# Solve this without using Array.reject!.

def filter_out!(array, &prc)
  array.uniq.each { |ele| array.reject!(ele) if prc.call(ele) }
end 


# multi_map
# Write a method multi_map that accepts an array, an optional number (n), and a block as arguments.
# The method should return a new array where each element of the original array is repeatedly run through the block n times.
# If the number argument is not passed in, then the the elements should be run through the block once.

def multi_map(array, n = 1, &prc)
  array = []
  array.each do |ele|
    n.times { ele = prc.call(ele) }
    mapped << ele 
  end 
  mapped 
end 


# proctition
# Write a method proctition that accepts an array and a block as arguments.
# The method should return a new array where the elements that return true when given
# to the block come before all of the elements that return false when given to the block.
# This means that the new array has two partitions; the order among elements in 
# the same partition should be the same as their relative order in the input array.


def proctition(array, &prc)
  trues = []
  falses = []

  array.each do |ele|
    if prc.call(ele)
      trues << ele
    else 
      falses << ele
    end 
  end 
  [ *trues, *falses ]
end 


# Phase 3: Perilous.
# selected_map!
# Write a method selected_map! that accepts an array and two procs as arguments.
# The method should replace the elements that return true when passed into the 
# first proc with their return values when they are passed into the second proc.
# This method should mutate the input array and return nil.


def selected_map!(array, prc1, prc2)
  array.each_with_index do |ele, i|
    array[i] = prc2.call(ele) if prc1.call(ele)
  end 
  nil 
end 


# chain_map
# Write a method that accepts any value and an array of procs as an argument. 
# The method should return the final result of feeding the value through all of the procs. 
# For example, if the array contains three procs, then:
# 
# the value is given to the first proc
# the result of the first proc is given to the second proc
# the result of the second proc is given to the third proc
# the result of third proc is the final result 

def chain_map(val, prcs)
  prcs.inject(val) { |accum, prc| prc.call(accum) }
end 


# proc_suffix
# Write a method proc_suffix that accepts a sentence and a hash as arguments.
# The hash contains procs as keys and suffix strings as values. 
# The method should return a new sentence where each word of the 
# original sentence is appended with a suffix if the original word returns
# true when given to the corresponding proc key. If an original word returns true for multiple procs,
# then the suffixes should be appended in the order that they appear in the input hash.

# contains_a = Proc.new { |w| w.include?('a') }
# three_letters = Proc.new { |w| w.length == 3 }
# four_letters = Proc.new { |w| w.length == 4 }

# p proc_suffix('dog cat',
#     contains_a => 'ly',
#     three_letters => 'o'
# )   # "dogo catlyo"

def proc_suffix(sentence, hash)
  words = sentence.split(' ')
  new_words = []
  words.each do |word| 
    new_word = word 
    hash.each do |prc, suffix|
      new_word += suffix if prc.call(word)
    end 
    new_words << new_word
  end 
  new_words.join(' ')
end 


# proctition_platinum
# Write a method proctition_platinum that accepts an array and any number of additional procs as arguments.
# The method should return a hash where the keys correspond to the number of procs passed in.

# For example, if three procs are passed in, then the hash should have the keys 1, 2, and 3.
# The values associated with each key should be an array containing the elements of the input array that return true when passed into the corresponding proc.

# For example, this means that the array that corresponds to the key 2 should contain the elements that return true when passed into the second proc.
# If an element returns true for multiple procs, then it should only be placed into the array that corresponds to the proc that appears first in the arguments.

def proctition_platinum(array, *prcs)
  partition = {}
  prcs.each_index { |i| proctition[i + 1] = [] }

  array.each do |ele|
    prcs.each_with_index do |prc, i| 
      if prc.call(ele)
        proctition[i + 1] << ele 
        break
      end 
    end 
  end 
  partition
end 

# procipher
# Write a method procipher that accepts a sentence and a hash as arguments. 
# The hash contains procs as both keys and values.
# The method should return a new sentence where each word of the input sentence is changed by a value
# proc if the original word returns true when passed into the key proc.
# If an original word returns true for multiple key procs,
# then the value proc changes should be applied in the order that they appear in the hash.

def procipher(sentence, hash) 
  words = sentence.split(' ')
  new_words = words.map do |word| 
    new_word = word 
    hash.each do |checker, changer|
      new_word = changer.call(new_word) if checker.call(word)
    end 
    new_word
  end 
  new_words.join(' ')
end 


# picky_procipher
# Write a method picky_procipher that accepts a sentence and a hash as arguments.
# The hash contains procs as both keys and values. The method should return a new 
# sentence where each word of the input sentence is changed by a value proc if the 
# original word returns true when passed into the key proc. If an original word returns
# true for multiple key procs, then only the value proc that appears earliest in the hash should be applied.

# p picky_procipher('he said what!',
#     is_yelled => make_question,
#     contains_a => reverse
# ) # "he dias what!???"

def picky_procipher(sentence, hash)
  words = sentence.split(' ')
  new_words = words.map do |word|
    key_procs = hash.keys 
    matches = key_procs.select { |prc| prc.call(word) }
    if matches.length >= 1 
      key_proc = matches.first 
      value_proc = hash[key_proc]
      value_proc.call(word)
    else 
      word 
    end 
  end 
  new_words.join(' ')
end 