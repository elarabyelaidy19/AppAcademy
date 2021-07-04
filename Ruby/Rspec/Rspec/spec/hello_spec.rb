require 'rspec' 
require 'hello' 


describe '#hello_world' do 
  it "return 'hello, world!'" do 
    expect (hello_world).to eq("hello, world!") 
  end  
end 


