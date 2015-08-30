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

ActiveRecord::Schema.define(version: 20150830082901) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string   "registration_number"
    t.string   "color"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "parking_slot_id"
  end

  create_table "parking_slots", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "car_id"
    t.boolean  "occupied"
    t.string   "slot_number"
    t.string   "status"
  end

  create_table "tickets", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "ticket_no"
    t.integer  "car_id"
    t.integer  "parking_slot_id"
    t.string   "status"
  end

end
