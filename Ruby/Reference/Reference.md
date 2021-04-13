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

  * passed a block to the array, the block construct a new array each time it is run 


# DRY (Don't Repeat Yourself) 







