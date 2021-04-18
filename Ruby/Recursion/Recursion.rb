
def upcase_iterative(str) 
  str.chars.inject("") do |upcased_char, char| 
    upcased_char << char.upcase 
  end  
end 
p upcase_iterative("hello world")


def upcase_recursivly(str) 
  return str.upcase if str.length <= 1 

  str[0].upcase + str[1..-1].upcase
end 

p upcase_recursivly("hello world") 


def reverse_recursivly(str) 
  return str if str.length <= 1

  str[-1] + reverse_recursivly(str[0..-2]) 
end 

p reverse_recursivly("hello world")
