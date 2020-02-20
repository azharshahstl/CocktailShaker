# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
martini = Glassware.create(style: "Martini Glass")
coupe = Glassware.create(style: "Coupe")
flute = Glassware.create(style: "Flute")
highball = Glassware.create(style: "Highball")
short_rocks = Glassware.create(style: "Short Rocks Glass")
tall_rocks = Glassware.create(style: "Tall Rocks Glass")

dry = Style.create(pallette: "Dry")
semi_dry = Style.create(pallette: "Semi-Dry")
sweet = Style.create(pallette: "Sweet")

olives = Garnish.create(kind: "Oilves")
lemon_twist = Garnish.create(kind: "Lemon Twist")
orange_twist = Garnish.create(kind: "Orange Twist")
cherry = Garnish.create(kind: "Luxardo Cherry")
flowers = Garnish.create(kind: "Flowers")

vodka = Alcohol.create(etoh_name: "Vodka")
dry_gin = Alcohol.create(etoh_name: "Plymouth Gin")
herbal_gin = Alcohol.create(etoh_name: "Uncle Val's Botanical Gin")
irish_whiskey = Alcohol.create(etoh_name: "Irish Whiskey")
peated_scotch = Alcohol.create(etoh_name: "Laphroag scotch")
unpeated_scotch = Alcohol.create(etoh_name: "Oban scotch")
four_roses = Alcohol.create(etoh_name: "Four Roses Bourbon")

