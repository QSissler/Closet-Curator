# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
puts "seeding users"
u1 = User.create!(username: "QSissler", password: "quinn1")
u2 = User.create!(username: "JSissler", password: "james1")

puts "seeding clothing items"
c1 = ClothingItem.create!(name: "Amelia dress", 
description: "Pastel sage green satin dress from Aritzia.",
front_image: "https://aritzia.scene7.com/is/image/Aritzia/hi-res/s22_04_a08_81395_24833_off_a.jpg",
back_image: "https://aritzia.scene7.com/is/image/Aritzia/large/s22_04_a08_81395_24833_off_b.jpg",
event: "semiformal",
category: "dress",
user_id: u1.id)
c2 = ClothingItem.create!(name: "Natalie Tank", 
description: "White bustier sweater tank from Aritzia.",
front_image: "https://aritzia.scene7.com/is/image/Aritzia/large/s22_04_a03_90523_11420_off_a.jpg",
back_image: "https://aritzia.scene7.com/is/image/Aritzia/large/s22_04_a03_90523_11420_off_a.jpg",
event: "casual",
category: "top",
user_id: u1.id)
c3 = ClothingItem.create!(name: "Ultra High Rise 90s Straight Jean", 
description: "On-trend 90's-style ultra high rise straight jeans from Abercrombie & Fitch",
front_image: "https://img.abercrombie.com/is/image/anf/KIC_155-2645-2983-278_prod1?policy=product-large",
back_image: "https://img.abercrombie.com/is/image/anf/KIC_155-2645-2983-278_prod1?policy=product-large",
event: "casual",
category: "bottom",
user_id: u1.id)

puts "seeding outfits"
o1 = Outfit.create!(user_id: u1.id)
o2 = Outfit.create!(user_id: u1.id)
o3 = Outfit.create!(user_id: u2.id)

puts "seeding clothing item outfits"

OutfitClothingItem.create!(outfit_id: o1.id, clothing_item_id: c1.id)
OutfitClothingItem.create!(outfit_id: o1.id, clothing_item_id: c2.id)
