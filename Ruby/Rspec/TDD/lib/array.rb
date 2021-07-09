def uniq(array) 
  uniq_array = [] 

  array.each do |el| 
    uniq_array << el unless uniq_array.include?(el) 
  end 

  uniq_array
end 


def two_sum(array) 
  pairs = [] 

  len = array.length - 1 

  (0..len).each do |p1| 
    (p1 + 1..len).each do |p2| 
      pairs << [p1, p2] if array[p1] + array[p2] == 0
    end 
  end 

  pairs 
end 

p two_sum([-5, -3, 1, 3])


def transpose(rows) 
  dimension = rows.first.count 
  cols = Array.new(dimension) { Array.new(dimension) } 

  dimension.times do |i| 
    dimension.times do |j| 
      col[j][i] = rows[i][j] 
    end 
  end 

  cols 
end


