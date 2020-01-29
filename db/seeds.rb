# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
azhar = Mixologist.create(email: "azhar@gmail.com", password: "123", prof_bartender: true, fav_liquors: "Scotch, whiskey, vodka", reason_to_shake: "I love to have a cocktail before meals to stimulate my appetite")
kyra = Mixologist.create(email: "kyra@gmail.com", password: "123", prof_bartender: false, fav_liquors: "Scotch, Pisco, Irish Whiskey", reason_to_shake: "I love cocktails")
nathan = Mixologist.create(email: "nathan@gmail.com", password: "123", prof_bartender: false, fav_liquors: "Bourbon, Sctoch", reason_to_shake: "Drinking is important to me")

manhattan = Cocktail.create(name: "Manhattan", direction: "Mix all ingredients together and pour into glass", mixologist_id: 1, style_id: 1)
