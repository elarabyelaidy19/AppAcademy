# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span 
    return nil if self.empty?
    return self.max - self.min 
  end 


  def average 
    return nil if self.empty? 
    self.sum / self.length.to_f
  end 

  def median  
    return nil if self.empty?
    self.sort! 
    if self.length.odd? 
        mid = self.length/2 
        return self[mid]
    else  
        first = self.length/2
        second = self.length / 2 - 1 
        average = (self[first] + self[second]) / 2.0 
        return average
    end 
    nil
  end
  
  def counts
    return {} if self.empty?
    hash = {} 
    self.each do |ele| 
        if hash.has_key?(ele) 
            hash[ele] += 1 
        else 
            hash[ele] = 1
        end  
    end 
    return hash
  end 


  def my_count(v)   
    count = 0 
    self.each do |ele| 
        count += 1 if ele == v 
    end 
    count
  end 

  def my_index(v)
    return nil if self.include?(v) == false 
    self.each_with_index do |e, i| 
        return i if e == v 
    end  
  end  

  def my_uniq 
    arr = [] 
    self.each do |e| 
        next if arr.include?(e) 
        arr << e  
    end 
    arr
  end

  def my_transpose 
    (0...self.length).each do |i| 
        (i...self.length).each do |j| 
            self[i][j], self[j][i] = self[j][i], self[i][j] 
        end  
    end  
    self
  end 
  
  
end
