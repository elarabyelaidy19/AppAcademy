require 'desert' 
require 'drink' 

describe Desert do 
  subject (:brownie) { Desert.new("brownie", 50) }
  let(:milk) { Drink.new("milk") } 

  describe '#initialize' do 
   it 'takes in type' do 
    expect(brownie.type).to eq('brownie') 
   end 

   it ' takes in amount' do  
    expect(brownie.amount).to eq(50) 
   end 


