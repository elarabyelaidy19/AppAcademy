require 'rspec' 
require 'hello' 


describe '#hello_world' do 
  it "return 'hello, world!'" do 
    expect (hello_world).to eq("hello, world!") 
  end  
end 


describe Integer do 
  describe '#to_s' do  
    it 'return string to integer' do  
      expect(5.to_s).to eq('5') 
    end 
  end 
end 

describe '#sqrt' do 
  it 'throw an error' do 
    expect { sqrt(-3) }.to raise_error(ArgumentError) 
  end 
end 



