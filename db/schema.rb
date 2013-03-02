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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130302035044) do

  create_table "bids", :force => true do |t|
    t.integer  "hand_id"
    t.string   "first_bid"
    t.string   "N1"
    t.string   "N2"
    t.string   "N3"
    t.string   "N4"
    t.string   "N5"
    t.string   "N6"
    t.string   "N7"
    t.string   "N8"
    t.string   "N9"
    t.string   "N10"
    t.string   "S1"
    t.string   "S2"
    t.string   "S3"
    t.string   "S4"
    t.string   "S5"
    t.string   "S6"
    t.string   "S7"
    t.string   "S8"
    t.string   "S9"
    t.string   "S10"
    t.string   "E1"
    t.string   "E2"
    t.string   "E3"
    t.string   "E4"
    t.string   "E5"
    t.string   "E6"
    t.string   "E7"
    t.string   "E8"
    t.string   "E9"
    t.string   "E10"
    t.string   "W1"
    t.string   "W2"
    t.string   "W3"
    t.string   "W4"
    t.string   "W5"
    t.string   "W6"
    t.string   "W7"
    t.string   "W8"
    t.string   "W9"
    t.string   "W10"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "current_bid"
  end

  create_table "games", :force => true do |t|
    t.integer  "user_1"
    t.integer  "user_2"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "hand_id"
    t.boolean  "auto_opp"
  end

  create_table "hands", :force => true do |t|
    t.integer  "game_id"
    t.integer  "bid_id"
    t.string   "c1"
    t.string   "c2"
    t.string   "c3"
    t.string   "c4"
    t.string   "c5"
    t.string   "c6"
    t.string   "c7"
    t.string   "c8"
    t.string   "c9"
    t.string   "c10"
    t.string   "c11"
    t.string   "c12"
    t.string   "c13"
    t.string   "c14"
    t.string   "c15"
    t.string   "c16"
    t.string   "c17"
    t.string   "c18"
    t.string   "c19"
    t.string   "c20"
    t.string   "c21"
    t.string   "c22"
    t.string   "c23"
    t.string   "c24"
    t.string   "c25"
    t.string   "c26"
    t.string   "c27"
    t.string   "c28"
    t.string   "c29"
    t.string   "c30"
    t.string   "c31"
    t.string   "c32"
    t.string   "c33"
    t.string   "c34"
    t.string   "c35"
    t.string   "c36"
    t.string   "c37"
    t.string   "c38"
    t.string   "c39"
    t.string   "c40"
    t.string   "c41"
    t.string   "c42"
    t.string   "c43"
    t.string   "c44"
    t.string   "c45"
    t.string   "c46"
    t.string   "c47"
    t.string   "c48"
    t.string   "c49"
    t.string   "c50"
    t.string   "c51"
    t.string   "c52"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
