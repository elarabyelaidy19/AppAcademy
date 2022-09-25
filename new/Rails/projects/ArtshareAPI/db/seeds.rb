# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user1 = User.create!(username: "Ali") 
user2 = User.create!(username: "Bob")
user3 = User.create!(username: "Cindy")

artwork1 = Artwork.create!(title: "Mona Lisa", image_url: "https://www.google.com/1", artist_id: user1.id)
artwork2 = Artwork.create!(title: "Starry Night", image_url: "https://www.google.com/2", artist_id: user2.id) 
artwork3 = Artwork.create!(title: "The Scream", image_url: "https://www.google.com/3", artist_id: user3.id)



artwoek_share1 = ArtwoekShare.create!(artwork_id: artwork1.id, viewer_id: user2.id) 
artwoek_share2 = ArtwoekShare.create!(artwork_id: artwork2.id, viewer_id: user3.id)
artwoek_share3 = ArtwoekShare.create!(artwork_id: artwork3.id, viewer_id: user1.id)