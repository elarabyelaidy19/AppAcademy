require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef"), name: "tucker" } 
  let (:brownie) { Dessert.new("brownie", 100, chef) } 

  describe "#initialize" do
    it "sets a type" do  
      expect(brownie.type).to eq("brownie") 
    end 

    it "sets a quantity" do 
      expect(brownie.quantity).to eq(100) 
    end 

    it "starts ingredients as an empty array" do 
      expect(brownie.ingredient).to be_empty 
    end 

    it "raises an argument error when given a non-integer quantity" do 
      expect { Dessert.new("cake", "tons" chef) }.to raise_error(ArgumentError) 
    end 
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      brownie.add_ingredient("chocolate") 
       expect(brownie.ingredient).to include("chocolate") 
    end
   end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
     ingredients = ["chocolate", "flour", "egg", "sugar", "butter"]  

     ingredients.each do |ingredient| 
      brownie.add_ingredient(ingredient) 
     end 

     expect(brownie.ingredients).to eq(ingredient) 
     brownie.mix! 
     expect(brownie.ingredients).not_to eq(ingredients) 
     expect(brownie.ingredients.sort).to eq(ingredients.sort) 
   end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
