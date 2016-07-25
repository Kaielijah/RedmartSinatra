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

ActiveRecord::Schema.define(version: 20160722003707) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.integer  "product_id",            null: false
    t.string   "product_name",          null: false
    t.string   "product_category",      null: false
    t.integer  "product_cost_per_unit"
    t.string   "product_supplier",      null: false
    t.string   "description",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "category_name", null: false
    t.string   "sub_category",  null: false
    t.string   "grocery",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.date     "order_date",           null: false
    t.integer  "users_id_id",          null: false
    t.string   "category_name",        null: false
    t.integer  "products_id_id",       null: false
    t.string   "products_description", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "description", null: false
    t.integer  "price",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchases", force: :cascade do |t|
    t.integer  "user_id",     null: false
    t.integer  "products_id", null: false
    t.boolean  "status",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "email",      null: false
    t.integer  "password",   null: false
    t.integer  "cc_number",  null: false
    t.integer  "address",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
