require './item.rb'

class List

  attr_accessor :label

  def initialize(label)
    @label = label
    @items = []
  end 

  def add_item(title, deadline, description)
    return false if !Item.valid_date?(deadline)
    @items << Item.new(title, deadline, description)
    true 
  end 

  def size
    @items.length
  end 

  def valid_index?(index)
    index >= 0 && index < self.size
  end 

  def swap(index_1, index_2)
    return false if !self.valid_index?(index_1) || !self.valid_index?(index_2)
    @items[index_1], @items[index_2] = @items[index_2],  @items[index_1]
    true 
  end 

  def [](index)
    return nil if !valid_index?(index)
    @items[index]
  end 

end 

 








