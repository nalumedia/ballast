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

ActiveRecord::Schema.define(version: 20151004152617) do

  create_table "blogs", force: true do |t|
    t.string   "blog_title"
    t.text     "blog_body"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "contact_name"
    t.string   "contact_email"
    t.text     "contact_description"
    t.string   "contact_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "delivertos", force: true do |t|
    t.string   "deliverto_street"
    t.string   "deliverto_city"
    t.string   "delivertto_state"
    t.string   "deliverto_zip"
    t.string   "deliverto_country"
    t.integer  "purchase_id"
    t.text     "deliverto_instructions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "deliverto_status"
  end

  create_table "fins", force: true do |t|
    t.string   "name"
    t.string   "base"
    t.string   "height"
    t.text     "description"
    t.decimal  "customer_price"
    t.decimal  "ballast_price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "model"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "purchases", force: true do |t|
    t.string   "email"
    t.integer  "amount"
    t.string   "description"
    t.string   "currency"
    t.string   "customer_id"
    t.string   "card"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uuid"
    t.string   "status"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
