def element_count(array)
  count = Hash.new(0)
  array.each { |ele| count[ele] += 1} 
  count 
end 

def char_replace(str, hash)
  (0...str.length).each do |i|
    if hash.has_key?(str[i])
      str[i] = hash[str[i]]
    end 
  end 
  str
end 

def product_inject(array)
  array.inject { |product, ele| product * ele }
end 






