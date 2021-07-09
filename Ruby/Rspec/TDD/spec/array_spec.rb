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
      expect(array).to include(el) 
    end 
  end 

  it "doesn't modify the original array" do 
    expect { uniq(array) }.to_not change{array} 
  end 
end 


describe 'two_sum' do 
  let(:array) { [-5, -3, 1, 3] }
  let(:one_zero) { [3, 0, 4] }
  let(:two_zeros) { [3, 0, 4, 0] } 

  it " finds two sum pairs" do 
    expect(two_sum(array)).to eq([[1, 3]]) 
  end 

  it " handle one zero" do 
    expect(two_sum(one_zero)).to eq([])
  end 

  it " handle two zeros" do 
    expect(two_sum(two_zeros)).to eq([[1, 3]]) 
  end 
end 






