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

ActiveRecord::Schema.define(:version => 20120118210829) do

  create_table "games", :force => true do |t|
    t.integer  "away_team_id"
    t.integer  "home_team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date"
    t.string   "time"
    t.integer  "spread"
    t.integer  "index"
    t.integer  "week_id"
  end

  create_table "teams", :force => true do |t|
    t.string "city"
    t.string "name"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "",    :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "",    :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "firstName"
    t.string   "lastName"
    t.boolean  "admin",                               :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_picks", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "game1"
    t.integer  "game2"
    t.integer  "game3"
    t.integer  "game4"
    t.integer  "game5"
    t.integer  "game6"
    t.integer  "game7"
    t.integer  "game8"
    t.integer  "game9"
    t.integer  "game10"
    t.integer  "game11"
    t.integer  "game12"
    t.integer  "game13"
    t.integer  "game14"
    t.integer  "game15"
    t.integer  "game16"
    t.integer  "week_id"
  end

  create_table "weeks", :force => true do |t|
    t.integer  "week"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
