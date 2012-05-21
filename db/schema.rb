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

ActiveRecord::Schema.define(:version => 20120519222013) do

  create_table "applications", :primary_key => "a_id", :force => true do |t|
    t.text    "first_name"
    t.text    "middle_initial"
    t.text    "last_name"
    t.integer "citizenship"
    t.integer "residence"
    t.text    "street_address"
    t.text    "city"
    t.text    "state"
    t.integer "country_tel_code"
    t.text    "zipcode"
    t.integer "area_code"
    t.text    "number"
    t.integer "specialization"
  end

  create_table "countries", :primary_key => "c_id", :force => true do |t|
    t.text "country"
  end

  create_table "degrees", :primary_key => "d_id", :force => true do |t|
    t.integer "aid"
    t.integer "uid"
    t.integer "mid"
    t.float   "gpa"
    t.text    "title"
    t.text    "ddate"
  end

  create_table "majors", :primary_key => "m_id", :force => true do |t|
    t.text "major"
  end

  create_table "specializations", :primary_key => "s_id", :force => true do |t|
    t.text "specialization"
  end

  create_table "universities", :primary_key => "u_id", :force => true do |t|
    t.text "country_state"
    t.text "university"
  end

  create_table "users", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
