require 'array' 

describe 'uniq' do 
  let (:array) { [1, 3, 4, 1, 3, 7] } 
  let (:uniqued_array) { uniq(array.dup) } 
  
  it " removes duplicate" do 
    array.each do |el| 
      expect(uniqued_array.count(el)).to eq(1) 
    end 
  end 

  it "only contains elements of the original array" do 
    uniqued_array.each do |el| 
      expect(array).to include(item) 
    end 
  end 