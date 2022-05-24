# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span 
    if self.empty?
      return nil 
    end 
    
    self.max - self.min 
  end 

  def average
    if self.empty?
      return nil
    end 

    self.sum / self.length.to_f
  end 


  def median 
    return nil if self.empty?

    if self.length.even?
      sorted = self.sort
      middle_index = self.length / 2 
      first_ele = sorted[middle_index]
      second_ele = sorted[middle_index - 1]
      return (first_ele + second_ele) / 2.0
    else 
      middle_index = self.length / 2
      return self.sort[middle_index]
    end 

    
  end 

  def counts
    count = Hash.new(0)
    self.each { |ele| count[ele] += 1}
    count
  end 

  def my_count(target)
    count = 0

    self.each do |ele| 
      if ele == target
        count += 1
      end 
    end 
    count 
  end 

  def my_index(target)

    self.each_with_index do |ele, idx| 
      if ele == target
        return idx
      end 
    end 

    nil 
  end 

  def my_uniq
    hash = {}

    self.each { |ele| hash[ele] = true }
    hash.keys
  end 

  def my_transpose
    new_arr = []

    (0...self.length).each do |row|
      new_row = []

      (0...self.length).each do |col|
        new_row << self[col] [row]
      end 

      new_arr << new_row
    end 

    new_arr
  end 

end
