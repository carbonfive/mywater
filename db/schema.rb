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

ActiveRecord::Schema.define(version: 20141027232647) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "reservoirs", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "capacity"
    t.integer  "current_supply"
    t.datetime "created_at",                                                                                                                                                  null: false
    t.datetime "updated_at",                                                                                                                                                  null: false
    t.integer  "water_system_id"
    t.spatial  "lonlat",                      limit: {:srid=>4326, :type=>"point", :geographic=>true}
    t.date     "current_supply_captured_on"
    t.integer  "monthly_averages_start_year"
    t.integer  "monthly_averages_end_year"
    t.integer  "monthly_averages",                                                                     default: [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],              array: true
  end

  add_index "reservoirs", ["water_system_id"], :name => "index_reservoirs_on_water_system_id"

  create_table "water_systems", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
