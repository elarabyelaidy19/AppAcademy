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

describe "transpose" do 
  it "transpose a matrix" do 
    matrix = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]
    expect(transpose(matrix)).to eq([
      [1, 4, 7],
      [2, 5, 8],
      [3, 6, 9]
    ])
  end 
end 

describe "pick_stock" do 
  it 'pick simple pair' do 
    expect(pick_stocks([3, 1, 0, 4, 6, 9])).to eq([2, 5]) 
  end 
  
  it 'find a better pair' do 
    expect(pick_stocks([3, 2, 5, 0, 6])).to eq([3, 4]) 
  end 

  it 'does not buy in a crash' do 
    expect(pick_stocks([5, 4, 3, 2, 1])).to be_nil 
  end 
end 





