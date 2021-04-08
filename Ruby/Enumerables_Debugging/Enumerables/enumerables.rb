class Array 

def my_each(&prc) 
  self.length.times do |i|
    prc.call(self[i])
  end 
  self 
end 

def my_select(&prc) 
  selects = [] 

  self.my_each do |i| 
    selects << i if prc.call(i) 
  end 
  selects
end 



