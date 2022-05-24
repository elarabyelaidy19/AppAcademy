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

  def peek
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


class Queue

  attr_accessor :array

  def initialize 
    @array = [] 
  end 

  def enqueue(ele) 
    array.push(ele)
    ele
  end 
  # remove first element 
  def dequeue
    array.shift
  end 

  def peek
    array.first 
  end 

end 


queue = Queue.new

puts
p queue.enqueue(6)
p queue.enqueue(2)
p queue.enqueue(2)
p queue.enqueue(3)
puts 
p queue.dequeue
puts
p queue.peek 



class Map 

  private

  attr_accessor :array 

  def initialize
    @array = [] 
  end 

  def set(key, value) 
    pair_index = array.index { |pair| pair[0] = value } 

    if pair_index 
      array[pair_index][1] = value 
    else 
      array.push[key, value] 
    end 
    value
  end 

  def get(key) 
    array.each { |pair| return pair[1] if pair[0] == value }
    nil
  end 

  def delete(key) 
    value = get(key) 
    array.reject! { |pair| pair[0] == key }
  end 

  def show 
    deep_dup(array) 
  end 

  def deep_dup(arr) 
    arr.map { |ele| ele.is_a?(Array) ? deep_dup(ele) : ele } 
  end 

end 