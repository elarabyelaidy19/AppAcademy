# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def prime?(num)
  return false if num < 2 

  (2...num).none? { |i| num % i == 0 }

end 



def largest_prime_factor(num)
  num.downto(2) do |factor|
    if num % factor == 0 && prime?(factor)
      return factor 
    end 
  end 
end 
 
#==========================================


def unique_chars?(string)
    already_seen = []

    string.each_char do |char|
      if string.include?(char)
        return false 
      end
      already_seen << char 
    end

    true
end 

#=============================================


def dupe_indices(array) 
 indices =  Hash.new { |h, k| h[k] = [] }

 array.each_with_index do |ele, index|
  indices[ele] << index 
 end 

 indices.select { |ele, array| array.length > 1 }
end 


#================================================

def ele_count(arr)
  count = Hash.new(0)

  arr.each { |ele| count[ele] += 1 }

  count
end 

def ana_array(arr_1, arr_2)
   count_1 = ele_count(arr_1)
   count_2 = ele_count(arr_2)
   count_1 == count_2
end 
