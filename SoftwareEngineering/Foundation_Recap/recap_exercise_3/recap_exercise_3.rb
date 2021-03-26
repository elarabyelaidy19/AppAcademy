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
