
def upcase_iterative(str) 
  str.chars.inject("") do |upcased_char, char| 
    upcased_char << char.upcase 
  end  
end 
p upcase_iterative("hello world")



