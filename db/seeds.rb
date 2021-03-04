require "open-uri"
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



[pyramids_of_giza, great_barrier_reef, stonehenge, great_wall_of_china, mt_everest, chichén_itzá,  petra, grand_canyon, the_terracotta_army].each do |attributes|
  User.first.portals.create(attributes)
end

[easter_islands, angkor_wat, banaue_rice_terraces, leaning_tower_of_pisa, hagia_sophia, taj_mahal, colosseum, christ_the_redeemer, machu_picchu].each do |attributes|
  User.last.portals.create(attributes)
end

url = [
  "https://images.unsplash.com/photo-1533412942175-10aea91943f4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGdpemF8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60", "https://images.unsplash.com/photo-1600583696773-472aafd3dd6c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8Z3JlYXQlMjBiYXJyaWVyJTIwcmVlZnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1522074174872-74def8b1d699?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8c3RvbmVoZW5nZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1495361174397-84e5b61bb77f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTJ8fGdyZWF0JTIwd2FsbCUyMG9mJTIwY2hpbmF8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
 "https://images.unsplash.com/photo-1486911278844-a81c5267e227?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZXZlcmVzdHxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1562657655-0b903655255a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hpY2glQzMlQTluX2l0eiVDMyVBMXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1501232060322-aa87215ab531?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8cGV0cmF8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1502724808734-6bcfafb27423?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8Z3JhbmQlMjBjYW55b258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1585811448890-ca18fa299d98?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8dGhlJTIwdGVycmFjb3R0YSUyMGFybXl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1597240890284-9a93d65f4d60?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8ZWFzdGVyJTIwaXNsYW5kc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1557025105-cb485bb62ee9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fGFuZ2tvciUyMHdhdHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1575891467811-70c900ebd3ff?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8YmFuYXVlJTIwcmljZSUyMHRlcnJhY2VzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1601980740525-fc689655157f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=776&q=80",
 "https://images.unsplash.com/photo-1614040670004-44d0d9a3aa2b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80",
 "https://images.unsplash.com/photo-1577125305658-dee71d4ee3c7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=806&q=80",
 "https://images.unsplash.com/photo-1568797629192-150b1088b839?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80",
 "https://images.unsplash.com/photo-1564659907532-6b5f98c8e70f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=754&q=80",
 "https://images.unsplash.com/photo-1565451987600-ea251b7eabcf?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80"]

i = 0
while i < url.length
  file = URI.open(url[i])
  Portal.find(i+1).cover_photo.attach(io: file, filename: "#{Portal.find(i+1).name.downcase.gsub(' ', '_')}.jpg", content_type: 'image/jpg')
  i += 1
end
