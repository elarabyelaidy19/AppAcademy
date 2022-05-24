def reverser(string, &prc)
  prc.call(string.reverse)
end 

def word_changer(sent, &prc)
  words = sent.split(" ")
  new_word = []

  words.each do |word|
     new_word << prc.call(word)
  end 

  new_word.join(" ")
end 

#======================================

def greater_proc_value(num, prc_1, prc_2)
  result_1 = prc_1.call(num)
  result_2 = prc_2.call(num)

  if result_1 > result_2
    return result_1
  else 
    return result_2
  end 
end

#======================================
def and_selector( array, prc_1, prc_2)
  new_array = []
  array.each do |ele|
    if prc_1.call(ele) && prc_2.call(ele)
      new_array << ele
    end 
  end 
  new_array 
end

#===========================

def alternating_mapper(array, prc_1, prc_2)
  new_array = []

  array.each_with_index do |ele, idx|
    if idx.even? 
      new_array << prc_1.call(ele)
    else
      new_array << prc_2.call(ele)
    end 
  end 
  new_array
end 