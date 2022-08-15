# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


h = House.create(address: 'malwaa') 

p1 = Person.create(name: 'elaraby', house_id: h.id) 
p2 = Person.create(name: 'hassan', house_id: h.id) 
p3 = Person.create(name: 'salah', house_id: h.id) 
