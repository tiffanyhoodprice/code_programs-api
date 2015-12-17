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

ActiveRecord::Schema.define(version: 20151215190412) do

  create_table "code_programs", force: :cascade do |t|
    t.text     "keywords",            limit: 65535
    t.string   "organization_name",   limit: 255
    t.string   "website",             limit: 255
    t.text     "mission_description", limit: 65535
    t.text     "population_focus",    limit: 65535
    t.string   "time_commitment",     limit: 255
    t.text     "cost",                limit: 65535
    t.string   "address",             limit: 255
    t.string   "city",                limit: 255
    t.string   "state",               limit: 255
    t.string   "zip",                 limit: 255
    t.text     "locations",           limit: 65535
    t.string   "leadership_contact",  limit: 255
    t.string   "title",               limit: 255
    t.string   "email",               limit: 255
    t.string   "phone_number",        limit: 255
    t.string   "when_founded",        limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.text     "languages_courses",   limit: 65535
  end

end
