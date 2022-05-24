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

   context 'with huge amount' do 
     subject(:brownie) { Desert.new("brownie", 10000) } 

     it 'sets the type to the giant amount' do 
      expect(brownie.type).to eq('giant brownie') 
     end 
    end
 

    it 'raise an error if the amount is not a number' do 
      expect { Desert.new("brownie", "tons")}.to raise_error('Amount must be a number') 
    end 
  end 

  
  describe '#eat' do 
    it 'calls #dip on the drink' do 
      expect(milk).to receive(:dip).with(brownie) 
      brownie.eat(milk)
    end 
  end 
end 


