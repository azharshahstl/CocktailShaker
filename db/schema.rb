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

ActiveRecord::Schema.define(version: 2020_09_22_172908) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alcohols", force: :cascade do |t|
    t.string "etoh_name"
  end

  create_table "cocktails", force: :cascade do |t|
    t.string "name"
    t.integer "mixologist_id"
    t.integer "style_id"
    t.integer "glassware_id"
    t.integer "garnish_id"
    t.string "instructions"
  end

  create_table "garnishes", force: :cascade do |t|
    t.string "kind"
  end

  create_table "glasswares", force: :cascade do |t|
    t.string "style"
  end

  create_table "measurements", force: :cascade do |t|
    t.integer "alcohol_id"
    t.integer "cocktail_id"
    t.string "unit"
    t.float "size"
  end

  create_table "mixologists", force: :cascade do |t|
    t.string "email"
    t.string "fav_liquors"
    t.string "reason_to_shake"
    t.string "password_digest"
  end

  create_table "styles", force: :cascade do |t|
    t.string "pallette"
  end

end
