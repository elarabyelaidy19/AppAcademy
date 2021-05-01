class Stack 


  attr_accessor :ivar

  def initialize 
    @ivar = [] 
  end 

  def push(ele)
    ivar.push(ele)
    ele
  end 

  def pop 
    ivar.pop 
  end 

  def top 
    ivar.last  
  end 

  def bottom
    ivar.first 
  end 

end  

stack = Stack.new

p stack.push(2)
p stack.push(3) 
p stack.push(4) 
p stack.push(4) 
puts

p stack.pop
p stack.pop





