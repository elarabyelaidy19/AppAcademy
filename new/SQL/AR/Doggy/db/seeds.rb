# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


owner1 = Owner.create(name_address: "abdo")
owner2 = Owner.create(name_address: "ahmed")


dog1 = Dog.create(name: "Fido", owner_id: owner1.id) 
dog2 = Dog.create(name: "Spot",  owner_id: owner2.id)

10000.times do 
    Dog.create(name: Faker::Name.first_name, owner_id: owner1.id)
end 


toy1 = Toy.create(name: "Ball", dog_id: dog1.id)
toy2 = Toy.create(name: "Bone", dog_id: dog1.id)

toy3 = Toy.create(name: "teez", dog_id: dog2.id)
toy4 = Toy.create(name: "Ball", dog_id: dog2.id) 


