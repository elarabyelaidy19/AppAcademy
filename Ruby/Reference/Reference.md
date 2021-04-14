# Refernces 
 * =, + does not mutate an object its reassign it 
 

  `code`
  ```ruby 
  [4] pry(main)> arr_of_arrs = Array.new(3, [])
  => [[], [], []]
  [5] pry(main)> arr_of_arrs[0] << "a"
  => ["a"]
  [6] pry(main)> arr_of_arrs
  => [["a"], ["a"], ["a"]]
  ``` 
  * tow arrays created arr_of_arrs and empty array for three positions with the same refernce 

  ```ruby
  [7] pry(main)> arr_of_arrs = Array.new(3) { Array.new } ==  arr_of_arrs = Array.new(3) { [] }
  => [[], [], []]
  [8] pry(main)> arr_of_arrs[0] << "a"
  => ["a"]
  [9] pry(main)> arr_of_arrs
  => [["a"], [], []] 
  ```

  * passed a block to the array, the block construct a new array each time it is run.


- - - 


# DRY (Don't Repeat Yourself) 
 > Every piece of knowledge must have a single, unambiguous, authoritative representation within a system.

* break duplicated code into methods. 
* if you find yourself copying and pasting code into other places, you should most likely refactor to avoid duplication.


```ruby
def process_consumer_address_form(fields)
  unless fields[:zip] =~ /[1-9][0-9]{4}/
    raise InvalidZipCodeError
  end

  # more form processing
end

def process_business_address_form(fields)
  unless fields[:zip] =~ /[1-9][0-9]{4}/
    raise InvalidZipCodeError
  end
end 
```

`refactoring` 

```ruby 
def process_consumer_address_form(fields)
  raise InvalidZipCodeError unless valid_zip?(fields[:zip])
  # more form processing
end

def process_business_address_form(fields)
  raise InvalidZipCodeError unless valid_zip?(fields[:zip])
  # more form processing
end

def valid_zip?(zip)
  zip =~ /[1-9][0-9]{4}/
end 
```

# Method Decomposition & Design 
## Atomic Methods 
* Each method should do one thing " Atomic Method" **Single Responsibility Principle**  
* Methods should be short 
* every method should one thing and only one thing 

## don't use golpal state 
* method should be like a mathematical function take something and return somrething 
* do not rely on anything besides what is explicity passed to it 
* should not have side effect 
* communicate its result through its return value 
* **the only way in should be the arguments, the only way out should be the return value.** 

## do not modify arguments 
```ruby 
def combine_ingredients(alcohols, mixers)
  drinks = []

  alcohols.length.times do
    drinks << [alcohols.pop, mixers.pop] # don't modify arguments i
  end

  drinks
end
``` 
# Refactoring (code smells) 
 * `` A code smell is any symptom in the source code of a program that possibly indicates a deeper problem. Code smells are usually not bugs — they are not technically incorrect and don't currently prevent the program from functioning.`` 

 * Duplicated code 
 * long method 
 * too many parameters 
 * Data clump 'if you see a group of data always being passed around together, this is usually a good candidate for refactoring out into an object.' start_date, end_date >> date_range
 * 



