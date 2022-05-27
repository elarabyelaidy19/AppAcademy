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


# Become Rubyist 
- use implicit return 
- omitting parentheses for method calls with no arguments. 
- single line condition 
- use built in methods. 
- use enumberable to iterate. 
 

 # Common Enumerable 
 ```ruby 
 arr.all? { |e| e.even? } # true if all even 
 arr.any? { |e| e.even? } # true if any even 
 arr.none? { |e| e.even } # true when no element even 
 arr.one? { |e| e.even? } # true when one element only  
 arr.count { |e| e.even? } # return number of element meet the condition 
 arr.max 
 arr.min 
 arr.sum 
 arr.flatten # flatten multi dimensional array into 1d arrays
``` 

# Symbols
- symbols are immutable String are not, so it can not be changed. 
- string wrapped in qutation mark, Symbol start with colon. 
- there is no need to create copies of symbols, operations on symols faster and more effecient comapred to string. 
- each time you refernce string it will allcoate new memory location.  
- symbole value will be stored in one memory location. 
- symbols used as a unique identifier in your code. so it used as the key for hash.  


# Default arguments and options hash notes
- you can make argeument optional by assign default value to it in parametr list.  
- it's best practice to have optional parameters after required ones.
- if you have method that accept a hash as an argument you can omit the braces when passing the hash.  


```ruby 
def repeat(message, num=1) 
  message * nums
end  

puts repeat("hi") # => hi 
puts repeat("hi", 3) # => hihihi  

# ======================
def modify_string(str, opts) 
  str.upcase! if opts["uppers"] 
  str * opts["repeats"]
end  
# =========================
modify_string("bye", "upper"=>true, "repeats"=>3) 

def modify_string(str, opts={"upper"=> false, "repeats"=>1}) 
  str.upcase! if opts["uppers"] 
  str * opts["repeats"]
end  

modify_string("by") # => by
modify_string("bye", "upper"=>true, "repeats"=>3) # => bybyby
```

# Splat Operator 
- using splat to accept additional arguments. the additional arguments will be gatherd in array. the arguments are passed in positionally.
- using splat to decompos array, make each element as an argument. it remove the brackets around array 
- using splat to decompos hahs. Double splat will only work with hashes where the keys are symbols

```ruby 

def splat(arg1, arg2, *args) 
  puts arg1 
  puts arg2 
  puts args
end     

print splat("h", "b") #  empty array for args
print splat("h", "b", 3, 5, 6) 

# ================== 
def name(fn, ln) 
  puts "hi" + fn + " " + ln
end 

arr = ["elaraby", "elaidy"] 
puts name(arr) # will no t work 
puts name(*arr) # 

# ======================== 
old_hash = { a: 1, b: 2 }
new_hash = { **old_hash, c: 3 }
p new_hash # => {:a=>1, :b=>2, :c=>3} 

```

# inject and reduce 
- inject accept two params acc and current element, the block return return th value of the acc. 
- if you does not set default val to the inject it will be the first element by default. 
- the accumulator will be reassigned to the result of the block on every iteration.  

```ruby 
arr = [1,11,14,12,11,13,17,9] 
arr.inject { |acc, ele| acc + ele} 
arr.inject { |acc, ele| acc * ele } 
arr.inject { |acc, ele| acc > ele ? ele : acc } # return min element  
arr.injetc(&:+) # sum call to_proc on the method
```