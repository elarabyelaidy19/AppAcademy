hash = {} 
hash[1] = 'zello' 
hash[2] = 'world'
hash[3] = 'fuck' 
hash[4] = 'you all' 

puts hash[1].concat(hash[2]) 

hash.sort_by { |k, v| v }.reverse! 
puts hash[4] << " sorry"
puts hash[4] << 6 
puts hash 

dog = { 
    name: "fido", 
    color: "balck", 
    age: 15,
    is_hungry: true,
    enmies: "pubby" 
}

dog[:enmies] << "milamn"
puts dog 

puts dog.has_key?(:whight) 
puts dog.has_value?(16)
puts dog.has_value?(15) 


counter = Hash.new(0)

str = "hello world" 
str.chars { |c| counter[c] += 1} 
puts counter  


str2 = "mississippi river" 
cntr = Hash.new(0) 
str2.each_char { |c| cntr[c] += 1}    

cntr.sort_by { |k, v| v }
print cntr