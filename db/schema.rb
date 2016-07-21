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

ActiveRecord::Schema.define(version: 20160721125550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "name",            null: false
    t.decimal  "number_of_items"
    t.decimal  "categories_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",               null: false
    t.decimal  "number_of_products"
    t.string   "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "brand_id"
    t.date     "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchases", force: :cascade do |t|
    t.string   "product_id",    limit: 30, null: false
    t.string   "user_id",                  null: false
    t.date     "purchase_date",            null: false
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 30, null: false
    t.string   "email"
    t.string   "address"
    t.string   "password",   limit: 20
    t.decimal  "cc_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
