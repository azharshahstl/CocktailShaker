# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_11_220623) do

  create_table "alcohols", force: :cascade do |t|
    t.string "etoh_name"
  end

  create_table "cocktails", force: :cascade do |t|
    t.string "name"
    t.string "alcohol"
    t.string "direction"
    t.integer "mixologist_id"
    t.integer "style_id"
    t.integer "glassware_id"
    t.integer "garnish_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.integer "cocktail_id"
    t.integer "mixologist_id"
  end

  create_table "directions", force: :cascade do |t|
    t.string "instructions"
    t.integer "cocktail_id"
  end

  create_table "garnishes", force: :cascade do |t|
    t.string "kind"
  end

  create_table "glasswares", force: :cascade do |t|
    t.string "style"
  end

  create_table "measurements", force: :cascade do |t|
    t.string "size"
  end

  create_table "mixologists", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.boolean "prof_bartender"
    t.boolean "admin"
    t.string "fav_liquors"
    t.string "reason_to_shake"
  end

  create_table "styles", force: :cascade do |t|
    t.string "pallette"
  end

end
