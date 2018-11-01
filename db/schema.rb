# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_01_070830) do

  create_table "cuppings", force: :cascade do |t|
    t.integer "crean_cup"
    t.integer "sweet"
    t.integer "acidity"
    t.integer "mouth_feel"
    t.integer "flavor"
    t.integer "after_taste"
    t.integer "balance"
    t.integer "over_all"
    t.text "flavor_coment"
    t.string "country"
    t.string "origin"
    t.string "process"
    t.string "shop"
    t.text "memo"
    t.integer "crean_cup_point"
    t.integer "sweet_point"
    t.integer "acidity_point"
    t.integer "mouth_feel_point"
    t.integer "flavor_point"
    t.integer "after_taste_point"
    t.integer "balance_point"
    t.integer "over_all_point"
    t.integer "total_point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
