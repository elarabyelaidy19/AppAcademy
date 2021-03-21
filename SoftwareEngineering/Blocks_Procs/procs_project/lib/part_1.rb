def my_map(array, &block)
  mapped = []

  array.each do |ele|
   mapped << block.call(ele)
end 
  mapped 
end 

def my_select(array, &block)
  new_array = []

  array.each do |ele|
    if block.call(ele)
      new_array << ele 
    end 
  end 
  new_array
end 


def my_count(array, &block)
  number = 0

  array.each do |ele|
    if block.call(ele)
      number += 1
    end 
  end 

  number 
end


def my_any?(array, &prc)
  array.each do |ele|
    if prc.call(ele) == true 
      return true 
    end 
  end

  false 
end 

def my_all?(array, &prc)
  array.each do |ele|
    if prc.call(ele) == false
     return false
    end 
  end 
   true 
end  


def my_none? (array, &prc)
  array.each do |ele|
    if prc.call(ele) == true 
      return false
    end 
  end 

  true 
end 