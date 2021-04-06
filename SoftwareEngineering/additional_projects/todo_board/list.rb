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


