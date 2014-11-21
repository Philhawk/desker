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

ActiveRecord::Schema.define(version: 20141121021603) do

  create_table "desks", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "price"
    t.boolean  "availability"
    t.text     "amenities"
    t.string   "desk_type"
    t.text     "thumbnail"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.text     "avatar"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venues", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.text     "contact"
    t.integer  "no_desks"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
