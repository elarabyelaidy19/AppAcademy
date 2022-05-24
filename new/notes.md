# Hash 
- assign unique value only if you tried to add duplicate key it will override the previous value 
- good for storing data of various types
- storing properties of objects
- access key does not exist it will return nil 
- store frequency of a specific key 

```ruby 
# plain hash
hahs = {} 
# default hash
hahs = Hash.new(default_value)

hash = {
  "a" => 1,
  "b" => 2,
  "c" => 3
} 

hash.keys # => ["a", "b", "c"] 
hash.values # => [1, 2, 3] 
hash.has_key?("a") # => true 
hash.has_value?(1) # => true 
hahs.keys[1] # => "b" 
## Enumerate over hash
hash.each do |key, value| 
  puts "#{key} is #{value}" 
end 

hash.each_key do |key| 
  puts key 
end

hash.each_value do |value| 
  puts value 
end 


```

```