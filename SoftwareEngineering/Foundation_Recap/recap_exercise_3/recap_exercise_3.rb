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