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

ActiveRecord::Schema.define(:version => 20120324192654) do

  create_table "bids", :force => true do |t|
    t.string   "buyer"
    t.string   "location"
    t.string   "sector"
    t.text     "description"
    t.datetime "opening_date"
    t.datetime "closing_date"
    t.string   "name"
    t.string   "email"
    t.integer  "phone"
    t.string   "addition_info"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attachment"
    t.integer  "user_id"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_companies", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "company_id"
  end

  create_table "companies", :force => true do |t|
    t.string   "org_name"
    t.string   "isa_license"
    t.date     "stablished_year"
    t.string   "business_size"
    t.text     "service_description"
    t.text     "address"
    t.string   "email"
    t.string   "website"
    t.date     "reg_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "companies_categories", :id => false, :force => true do |t|
    t.integer "company_id"
    t.integer "category_id"
  end

  create_table "experiences", :force => true do |t|
    t.string   "customer"
    t.string   "location"
    t.date     "date"
    t.string   "duration"
    t.string   "project_cost"
    t.text     "project_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
  end

  create_table "partners", :force => true do |t|
    t.string   "name"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "role"
    t.string   "hashed_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
