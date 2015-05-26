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

ActiveRecord::Schema.define(version: 20150526142312) do

  create_table "buyers", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.integer  "credits",                limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "buyers", ["email"], name: "index_buyers_on_email", unique: true, using: :btree
  add_index "buyers", ["reset_password_token"], name: "index_buyers_on_reset_password_token", unique: true, using: :btree

  create_table "channels", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "user_name",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "text",       limit: 255
    t.integer  "product_id", limit: 4
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "buyer_id",   limit: 4
    t.integer  "variant_id", limit: 4
  end

  create_table "orders_has_variants", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "order_id",   limit: 4
    t.integer  "variant_id", limit: 4
  end

  add_index "orders_has_variants", ["order_id", "variant_id"], name: "index_orders_has_variants_on_order_id_and_variant_id", unique: true, using: :btree
  add_index "orders_has_variants", ["order_id"], name: "index_orders_has_variants_on_order_id", using: :btree
  add_index "orders_has_variants", ["variant_id"], name: "index_orders_has_variants_on_variant_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "active",      limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "channel_id",  limit: 4
  end

  create_table "variants", force: :cascade do |t|
    t.integer  "quantity",   limit: 4
    t.integer  "price",      limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "product_id", limit: 4
    t.integer  "order_id",   limit: 4
  end

end
