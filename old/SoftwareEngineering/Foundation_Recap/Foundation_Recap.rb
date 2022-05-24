# spaceship operators <=>

 a <=> b 
# will return -1 if a less than b
# will return 0 if a == b
# will return 1 if a grater than b 

# p 7 <=> 2
# p 3 <=> 3
# p 2 <=> 7 


def compare(a, b)
  if (a <=> b) == -1
    p "a less than b"
  elsif (a <=> b) == 1
    p " a greater than b"
  else 
    p " a eq b"
  end 

end 

compare(2, 9)
compare(2, 2)
compare(9, 2)

# =====================================

def bubble_sort(array, &proc)
  sorted = false 

  while !sorted 
    sorted = true 

    (0..array.length - 1).each do |i|
      if proc.call(array[i], array[i + 1]) == 1
        array[i], array[i + 1 ] = array[i + 1], array[i]
        sorted = false
      end 
    end 
  end 

  array
end 

p bubble_sort([2, 5, -4, 17, 1]) {|a, b| a <=> b }
sorted = bubble_sort(["x", "u", "k"]) do |a, b|
  alpha = ("a".."z").to_a
  alpha.index(a) <=> alpha.index(b)
end 


p sorted 