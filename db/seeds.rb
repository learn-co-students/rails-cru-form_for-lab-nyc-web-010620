Artist.destroy_all

a1=Artist.create(name:"Shakira" , bio:"Bio of Shakira")
a2=Artist.create(name:"Drake", bio:"Bio of Drake")
a3=Artist.create(name:"Madonna" , bio:"Bio of Madonna")

Genre.destroy_all

g1=Genre.create(name:"pop")
g2=Genre.create(name:"hip-hop")
g3=Genre.create(name:"rock")
 
# Song.destroy all

# s1=Song.create(name:"Song1" , artist:a1, genre:g1)
# s2=Song.create(name:"Song2" , artist:a2, genre:g2)
# s3=Song.create(name:"Song3" , artist:a3, genre:g3)


