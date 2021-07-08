def uniq(array) 
  uniq_array = [] 

  array.each do |el| 
    uniq_array << el unless uniq_array.include?(el) 
  end 

  uniq_array
end 

