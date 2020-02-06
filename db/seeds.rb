# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a1 = Artist.create(name: "Drake", bio: "aaasdseecddd")
a2 = Artist.create(name: "Dre", bio: "dsfrwrgehbdbd")
a3 = Artist.create(name: "Eminem", bio: "i am not afraid")
a4 = Artist.create(name: "Linkin", bio: "I wantin that way")
a5 = Artist.create(name: "Chris", bio: "chris brown idjshds")
a6 = Artist.create(name: "Jcole", bio: "asasasasasabs")


g1 = Genre.create(name: "Jazz")
g2 = Genre.create(name: "Country")
g3 = Genre.create(name: "Blues")
g4 = Genre.create(name: "RnB")
g5 = Genre.create(name: "Hiphop")

s1 = Song.create(name: "One love", artist_id: a1.id, genre_id: g5.id)
s2 = Song.create(name:"Hello", artist_id: a6.id, genre_id: g3.id)
s3 = Song.create(name: "ypooo",artist_id: a5.id, genre_id: g5.id)
s4 = Song.create(name: "jdhfdkhfkjd", artist_id: a3.id, genre_id: g1.id)
s5 = Song.create(name: "hdjhdfdf", artist_id: a2.id, genre_id: g2.id)
s6 = Song.create(name: "hgdsgdsydgsdhs", artist_id: a4.id, genre_id: g4.id)
s7 = Song.create(name: "lovely", artist_id: a2.id, genre_id: g1.id)