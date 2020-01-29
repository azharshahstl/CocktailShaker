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

ActiveRecord::Schema.define(version: 2020_01_29_161111) do

  create_table "alcohols", force: :cascade do |t|
    t.string "etoh_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cocktails", force: :cascade do |t|
    t.string "name"
    t.boolean "alcohol"
    t.boolean "glassware"
    t.boolean "garnish"
    t.text "direction"
    t.integer "mixologist_id"
    t.integer "style_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "glass_wares", force: :cascade do |t|
    t.boolean "style"
    t.integer "cocktail_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mixologists", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.boolean "prof_bartender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "fav_liquors"
    t.string "reason_to_shake"
  end

end
