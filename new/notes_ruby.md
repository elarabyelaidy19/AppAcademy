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
(0..10).injetc([0,1]) { |fib| fib << fib.last(2).inject(&:+) }
``` 

# Scope
-  Scope describes the location in your program where a variable is accessible. 
- **Lexical Scope:** Lexical scope describes how a variable name evaluates in nested code
- **Local Scope:** scope the function create inside it, the suronded scope also considered local scope.
- **Global Scope:** any variables define in global scope can be refernced anywhere in your code.
- Methods create there own scope. and have not access to it surrounded scope. code out in the open as another local scope, although it's not a method.
- Constants exists in global scope. constants can not be reassigned but it can be mutated. 
- Blocks and other structures like conditions or while loops don't have their own scope, they are really a part of the containing method's scope.  
 


# Reference  
- every var create a refernce to it's value in memory, when you update the value the ref doesn't change. 
- assigning the same var to another it will point to the same location in memory. if you modify one of them it will change the value of the other one. 
- reassign create new ref memory location.

```ruby 
str = 'hi' 
str2 = 'hi' 
str == str2 # true 
str.equal?(str2) # false different objects and diff memory locations 

str = str2  
str.equal?(str2) # true we assigned the reference to the same memory location

grid = Array.new(3, Array.new(3)) # create 2D array of the same array meaning the inner arrays have the same memory address change in one array it will change all 
grid = Array.new(3) { Array.new(3) } # create 2D array of distinct arrays 
```


# Test Driven Development 
- TDD (Test Driven Development) is a strategy to develop programs where the requirements for the program are turned into test cases. 
- the behaviours of components are examples of simple test cases. 

```ruby 
1- start with an empty definition 
2- wirte a new test  
3- make changes to the code to make it pass
def prime?(n) 
  return false if n < 2
  (2..n).each do |i| 
      return false if n % i == 0 
  end 

end 
```

# Rspec
- **Automated Test:** developers will code test suites, a collection of test cases that are intended to show that a program demonstrates some specified set of behaviours. 
- **describe:** names the method being tested. 
- **it:** express the behaviour of the method being tested. 
- **expect:** show how that behavior is tested.
- **context:** outline differnt scenarios that our code is expected to satisfy.
``` 
/example_project
  ├── lib
  │   ├── add.rb
  │   └── prime.rb
  └── spec
      ├── add_spec.rb
      └── prime_spec.rb
```

```ruby 
def add(a, b) 
  a + b
end 

describe "add method" do 
  it "should accept two number as arguments" do 
    expect { add(a,b) }.to_not raise_error
  end 

  context "add positive numbers" do 
    it "should add two numbers and return the result" do 
      expect(add(1, 4)).to eq(5) 
      expect(add(12, 0)).to eq(12)
    end  
  end 

  context "add negative numbers" do 
    it "should add two numbers and return the result" do 
      expect(add(-1, -4)).to eq(-5) 
      expect(add(-12, -3)).to eq(-15)
    end
  end 

end 
```


# Exceptions
- Upon reaching an exception, the default behavior in ruby is to terminate the program. and you can define the behaviour to deal with exception. 
- **begin..rescue**: to handle exceptions 
## Types of ruby errors 
<b>

- ZeroDivisionError
- ArgumentError
- TypeError
- NameError
- NoMethodError
- IndexError 

</b>

## Handling Exceptions

```ruby 
n = 0 
begin  
  puts " dividing 10 by #{n} " 
  ans = 10 / n 
  puts "the answer is #{ans}" 
rescue 
  puts "division by zero error occured" 
end 

```

## Raising Exceptions
- we need exceptions to raise an message when an exceptional event occurs. 
- it helps to hide the ineternal working of your code. 
-  **raise** is how we bring up an exception, whereas **begin...rescue** is how we react to that exception.


```ruby 
def format(fn, ln) 
  if !(fn.instance_of?(String) && ln.instance_of?(String)) 
    raise "argumnets must be string"
  end
   
  return fn.upcase +" " + ln.upcase
end 

fn = 24 
ln = true 

begin 
  puts format(fn, ln) 
rescue 
  puts "there is an exceptions happend"
end  

puts format("agmed", "wahed") # agmed wahed 
puts format(6, true) # NoMethodError: undefined method `capitalize' for 42:Integer 

``` 


# Blocks 
- blocks is a code block that is passed into a method to bexcuted.
- `["a", "b", "c"].map(&:upcase)` &:upcase 
  - :upcase is a symbol that referring to the String#upcase method. 
  - & convert this method to an object that can be passed to a method.

```ruby  
array.map { |block_param| block_param.method } 
array.map(&:method) 

```

# Procs 
- proc is an object that contains a block of code. they allow to save blocks to variables.
- proc.call will evaluate the last line of the block.
- using & to convert a block to a proc and proc to block.

```ruby
# creating a proc 
doubler = Proc.new { |n| n * 2 }
# calling a proc
doubler.call(2) # 4

# Passing a proc to a method

def add_and_proc(a, b, proc) 
  sum = a + b
  proc.call(sum) 
end

doubler = Proc.new() { |n| n * 2 } 
add_and_proc(2, 3, doubler) # 8


# Automatic Procs  - when you don't want to create a proc but you want to use a block.  
def add_and_proc(a, b, &proc) 
  sum = a + b
  proc.call(sum) 
end

add_and_proc(2, 3) { |n| n * 2 } # 8

# proc into a method
double = Proc.new { |n| n * 2 }
[1,2,3].map(&double) # [2, 4, 6]

```