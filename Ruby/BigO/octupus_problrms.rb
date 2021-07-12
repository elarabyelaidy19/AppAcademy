def quadratic_biggest_fish(fishes) 
  fishes.each_with_index do |fish1, i1| 
  max_length = true 

  fishes.each_with_index do |fish2, i2| 
    next if i1 == i2 

    max_length = false if fish2.length > fish1.length 
  end 

  return fish1 if max_length
end 

