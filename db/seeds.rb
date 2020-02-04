# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Genre.destroy_all
Song.destroy_all

a1 = Artist.create!(name: "Drake", bio: "A canadian rapper")
a2 = Artist.create!(name: "Trippie Redd", bio: "An Ohio Gangsta")
a3 = Artist.create!(name: "Blueface", bio: "Some dude from the West Side")

g1 = Genre.create!(name: "Rap")
g2 = Genre.create!(name: "Hip-Hop")
g3 = Genre.create!(name: "Trap")

s1 = Song.create!(name: "The Grinch", Artist_id: a2.id, Genre_id: g3.id)
s2 = Song.create!(name: "Gyalchester", Artist_id: a1.id, Genre_id: g2.id)
s3 = Song.create!(name: "Thotiana", Artist_id: a3.id, Genre_id: g1.id)
s4 = Song.create!(name: "Mac10", Artist_id: a2.id, Genre_id: g1.id)
s5 = Song.create!(name: "Bussdown", Artist_id: a3.id, Genre_id: g2.id)
