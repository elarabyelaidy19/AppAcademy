# TDD workflow with prime?

# iteration 1: write a new test 
# check if the numbers that passes is prime 

def prime?(num)

end 

prime?(6) # => flase 
prime?(8) # => false 
prime?(9) # => false


# iteration 1: Run all tests and check for new failure
#  We need to know that the test can fail, otherwise it may not be testing anything at all.

# TDD Iteration 1: return false if the number is not prime
def prime?(num)

end

# desired output
prime?(6) # => false
prime?(8) # => false
prime?(9) # => false

# current output
prime?(6) # => nil (FAIL)
prime?(8) # => nil (FAIL)
prime?(9) # => nil (FAIL)
# test is fail, we succesed

#-----------------------------------

# iteration 1: make changes to the method to pass only the test case

def prime?(num)
  (2...num).each do |i|
    return false if num % i == 0 
  end 
end 

# desired output
prime?(6) # => false
prime?(8) # => false
prime?(9) # => false

# current output
prime?(6) # => false (PASS)
prime?(8) # => false (PASS)
prime?(9) # => false (PASS)
# test passes 

#---------------------------

# Iteration 2: write a new test case

# TDD Iteration 2: return true if the number is prime
prime?(2)   # => true
prime?(7)   # => true
prime?(11)  # => true

# Iteration 2: run all tests and check for failures 
def prime?(num)

  (2...num).each do |i|
    return false if num % i == 0
  end 
end 

# desired output
prime?(2)   # => true
prime?(7)   # => true
prime?(11)  # => true

# current output
prime?(2)   # => 2...2 (FAIL)
prime?(7)   # => 2...7 (FAIL)
prime?(11)  # => 2...11 (FAIL)

# test fail 

--------------------------------------

# make changes 

def prime?(num)
  (2...num).each do |i|
    return false if num % i == 0 
  end 

  true 
end 

# desired output
prime?(2)   # => true
prime?(7)   # => true
prime?(11)  # => true

# current output
prime?(2)   # => true (PASS)
prime?(7)   # => true (PASS)
prime?(11)  # => true (PASS)

# Test pass

# =================================

# write a new test 

# TDD Iteration 3: return false if the number is less than 2, since 2 is the smallest prime

prime?(1)   # => false
prime?(0)   # => false
prime?(-42) # => false

# Iteration 3: Run all tests and

def prime?(num)
  (2...num).each do |i|
    return false if num % i == 0
  end

  true
end

# desired output
prime?(1)   # => false
prime?(0)   # => false
prime?(-42) # => false

# current output
prime?(1)   # => true (FAIL)
prime?(0)   # => true (FAIL)
prime?(-42) # => true (FAIL)

# test fails 

# Make changes  

def prime?(num)
  return false if num < 2

  (2...num).each do |i|
    return false if num % i == 0
  end 

  true 
end 

# Run all tests 

def prime?(num)
  return false if num < 2

  (2...num).each do |i|
    return false if num % i == 0
  end

  true
end

# desired output
prime?(1)   # => false
prime?(0)   # => false
prime?(-42) # => false

# current output
prime?(1)   # => false
prime?(0)   # => false
prime?(-42) # => false
