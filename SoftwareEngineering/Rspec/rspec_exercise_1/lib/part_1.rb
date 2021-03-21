
def average(num1, num2)
  return (num1 + num2) / 2.0
end 

#==================================

def average_array(array)
  array.sum / array.size.to_f
end 

#==================================

def repeat(string, number)
  new_string = ""
  number.times {new_string += string}
  new_string  
end 

#===========================================

def yell(string)
   string.upcase + "!"
end 

#============================================

def alternating_case(sentence)

  words = sentence.split(" ")

  new_words = words.map.with_index do |word, index|
    if index % 2 == 0 
      word.upcase
    else 
      word.downcase
    end  
  end 
  new_words.join(" ")
end
  