# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20130814225811) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: true do |t|
    t.string   "name"
    t.boolean  "major_arcana"
    t.string   "suit"
    t.string   "description"
    t.string   "tags_plus"
    t.string   "tags_minus"
    t.string   "text_forward"
    t.string   "text_reversed"
    t.binary   "card_image_upright"
    t.binary   "card_image_reversed"
    t.binary   "card_thumbnail"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "deck_id"
  end

  create_table "decks", force: true do |t|
    t.string   "name"
    t.string   "summary"
    t.text     "description"
    t.integer  "cloned_from_id"
    t.string   "deck_status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "person_id"
  end

  add_index "decks", ["name"], name: "decks_name_ux", unique: true, using: :btree

  create_table "people", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "about_me"
    t.string   "person_status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "preferences"
  end

  add_index "people", ["email"], name: "people_email_ux", unique: true, using: :btree
  add_index "people", ["name"], name: "people_name_ux", unique: true, using: :btree

  create_table "positions", force: true do |t|
    t.integer  "position_order"
    t.integer  "position_x"
    t.integer  "position_y"
    t.string   "meaning_normal"
    t.string   "meaning_reversed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "spread_id"
  end

  create_table "readings", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "person_id"
    t.integer  "spread_id"
    t.integer  "deck_id"
  end

  create_table "spreads", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "master_spread"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "person_id"
    t.integer  "deck_id"
  end

end
