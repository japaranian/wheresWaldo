# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(fname: "Mina", lname: "Talai", email: "mina@test.com", password: "test")
u2 = User.create(fname: "Jeff", lname: "Konowitch", email: "jeff@test.com", password: "test")
u3 = User.create(fname: "Neel", lname: "Patel", email: "neel@test.com", password: "test")
u4 = User.create(fname: "Andrew", lname: "Fritz", email: "andrew@test.com", password: "test")

image1 = Image.create(img_url: "http://i.imgur.com/nf6oSGR.jpg", level: "intermediate")
image2 = Image.create(img_url: "http://i.imgur.com/4B42MkD.jpg", level: "easy")
image3 = Image.create(img_url: "http://i.imgur.com/btsRJjC.jpg", level: "difficult")

match1 = Match.create(winner: u1.id, loser: u2.id, image_id: image1.id)
match2 = Match.create(winner: u3.id, loser: u4.id, image_id: image3.id)