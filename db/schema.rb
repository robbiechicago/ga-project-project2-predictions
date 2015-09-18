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

ActiveRecord::Schema.define(version: 20150917200801) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "event_type"
    t.decimal  "prediction_1_result"
    t.decimal  "prediction_2_result"
    t.decimal  "prediction_3_result"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "prediction1"
    t.string   "prediction2"
    t.string   "prediction3"
  end

  create_table "user_event_predictions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.decimal  "prediction_1"
    t.decimal  "prediction_2"
    t.decimal  "prediction_3"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end