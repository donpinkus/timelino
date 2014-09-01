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

ActiveRecord::Schema.define(version: 20140901182723) do

  create_table "events", force: true do |t|
    t.datetime "date",        default: '2014-08-30 08:18:04'
    t.string   "title"
    t.text     "content"
    t.string   "image"
    t.text     "caption"
    t.integer  "timeline_id"
    t.integer  "user_id",     default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["timeline_id"], name: "index_events_on_timeline_id"
  add_index "events", ["user_id"], name: "index_events_on_user_id"

  create_table "timelines", force: true do |t|
    t.integer  "user_id",     default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.text     "description"
    t.string   "tagline"
  end

  add_index "timelines", ["user_id"], name: "index_timelines_on_user_id"

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
