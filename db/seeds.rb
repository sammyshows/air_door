# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create(email: "user@user.com", password: "password")
User.last.create(name: "Totally Lit", description: "yeah its sweet", price: 3500)

pyramids_of_giza = { name: "Pyramids of Giza", description: "A few triangles", price: 1000 }
great_barrier_reef = { name: "Great Barrier Reef", description: "Beautiful coral", price: 1000 }
stonehenge = { name: "Stonehenge", description: "A few rocks", price: 1000 }
great_wall_of_china = { name: "Great Wall of China", description: "A wall", price: 1000 }
mt_everest = { name: "Mount Everest", description: "A hill", price: 1000 }


[pyramids_of_giza, great_barrier_reef, stonehenge, great_wall_of_china, mt_everest].each do |attributes|
  User.last.portals.create(attributes)
end
