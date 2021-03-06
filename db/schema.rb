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

ActiveRecord::Schema.define(version: 20150509193356) do

  create_table "blood_requests", force: :cascade do |t|
    t.string   "blood_group"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "area"
    t.boolean  "active"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "blood_requests", ["user_id"], name: "index_blood_requests_on_user_id"

  create_table "request_response_mappings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "blood_request_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "request_response_mappings", ["blood_request_id"], name: "index_request_response_mappings_on_blood_request_id"
  add_index "request_response_mappings", ["user_id"], name: "index_request_response_mappings_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "phone_number"
    t.string   "blood_group"
    t.string   "area"
    t.string   "latitude"
    t.string   "longitude"
    t.date     "last_donated"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "registration_id"
  end

end
