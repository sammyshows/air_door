# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create(email: "user@user.com", password: "password")
# User.last.create(name: "Totally Lit", description: "yeah its sweet", price: 3500)
Booking.delete_all
Portal.delete_all
User.delete_all

User.create(email: "userone@user.com", password: "password")
User.create(email: "visitor@user.com", password: "password")
User.create(email: "usertwo@user.com", password: "password")

pyramids_of_giza = { name: "Pyramids of Giza", description: "A few triangles", price: 10000 }
great_barrier_reef = { name: "Great Barrier Reef", description: "Beautiful coral", price: 3000 }
stonehenge = { name: "Stonehenge", description: "A few rocks", price: 1500 }
great_wall_of_china = { name: "Great Wall of China", description: "A wall", price: 7000 }
mt_everest = { name: "Mount Everest", description: "A hill", price: 4000 }
chichén_itzá = { name: "Chichén Itzá", description: "A Mayan city", price: 30000 }
petra = { name: "Petra", description: "Ancient city", price: 15000 }
grand_canyon = { name: "Grand Canyon", description: "A natural formation with layered bands of red rock", price: 30000 }
the_terracotta_army = { name: "The Terracotta Army", description: "Terracotta sculptures depicting the armies of Qin Shi Huang", price: 30000 }
easter_islands = { name: "Easter Islands", description: "Human carvings by the Polynesian people of Chile", price: 30000 }
angkor_wat = { name: "Angkor Wat", description: "Temples in Cambodia", price: 30000 }
banaue_rice_terraces = { name: "Banaue Rice Terraces", description: "Rice terraces in the Philippines", price: 30000 }
leaning_tower_of_pisa = { name: "Leaning Tower of Pisa", description: "A freestanding bell tower", price: 30000 }
hagia_sophia = { name: "Hagia Sophia", description: "Greek Orthodox church turned into a mosque", price: 30000 }
taj_mahal = { name: "Taj Mahal", description: "A mausoleum complex in Agra, India", price: 50000 }
colosseum = { name: "Colosseum", description: "Amphitheater in Rome", price: 30000 }
christ_the_redeemer = { name: "Christ the Redeemer", description: "A statue of Jesus", price: 1000000 }
machu_picchu = { name: "Machu Picchu", description: "An Incan site near Cuzco, Peru", price: 30000 }




[pyramids_of_giza, great_barrier_reef, chichén_itzá, grand_canyon, the_terracotta_army, easter_islands, angkor_wat, banaue_rice_terraces, leaning_tower_of_pisa].each do |attributes|
  User.first.portals.create(attributes)
end

[stonehenge, great_wall_of_china, mt_everest, petra, hagia_sophia, taj_mahal, colosseum, christ_the_redeemer, machu_picchu].each do |attributes|
  User.last.portals.create(attributes)
end
