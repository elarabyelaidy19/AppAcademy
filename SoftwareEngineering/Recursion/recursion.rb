# simple recursion
# infinite recursive loop   

def say_hello
  puts "hello" 
  say_hello
end 

say_hello

# infinite recursive loop starting with 10 decreasing forever causin run out of memory 
def count_down(num)
  p num
  count_down(num - 1)
end 

count_down(10)

# modifying previous function to evaluates proberley 

def count_down(num)
  # base case 
  if num == 0
    p "we finish"
    return; 
  end 
  
  p num 
  # recursive step 
  count_down(num - 1)
end 

count_down(10)

# anatomy of recursive function 
#   the base case where we halt the recursion by not making another call 
#   the recursive step where swe continue  the recursion by making another subsquent call 


# factorial recursive function 

def factorial(n)
  if n == 1 
    return 1 
  end 

  n * factorial(n - 1)
end 


# fibonacchi recursive function 

def fibonacchi(n)
  if n == 1 || n == 2 
    return 1 
  end 

  fibonacchi(n - 1) + fibonacchi(n - 2)
end 
