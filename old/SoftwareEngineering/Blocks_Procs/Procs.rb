# a procs is an object that contains a block they allow us to save blocks to variables so we can manipulate them in our code 
# we can not pass a block to a method but we can turn the block into proc and pass it to the method
# we create proc by using the Proc.new keyword and give it the block to wrap up
# we can not assign blocks to variables  

# creating a proc 
doubler = Proc.new { |num| num * 2 }
p doubler
# calling a proc we need to use the proc#call
p doubler.call(5)


is_even = Proc.new { |num| num.even? }
p is_even.call(14)

#==========================
# passing proc to a method

def add_and_proc(num1, num2, prc)
  sum = num1 + num2
  p prc.call(sum)
end 

doubler = Proc.new { |num| num * 2 }
add_and_proc(4, 8, doubler)      #  => 24

square = Proc.new { |num| num * num }
add_and_proc(9, 5, square)       #  => 196

negate = Proc.new { |num| num * -1 }
add_and_proc(1, 6, negate)      # => -7


# ================================
# using & to convert a block into a proc and vise versa

def add_and_proc(num1, num2, &prc)
  sum = num1 + num2 
  p prc.call(sum)
end 

add_and_proc(1, 4) { |num| num * 2 } # block 

doubler = Proc.new { |num| num * 2 }  # proc
add_and_proc(1, 5, &doubler)          

# It all depends on context: when we see & in the parameters for a method definition we know it will convert a block to a proc and when we see & in the arguments for a method call we know it will convert a proc to a block.


#==================================

[1, 2, 3].map{ |num| num * 2 }

doubler = Proc.new { |num| num * 2 }
[1, 2, 3].map(&doubler) # converting proc into a block and passing it to a map method wich is not accept anything except blocks.
