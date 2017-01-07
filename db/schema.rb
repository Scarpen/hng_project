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

ActiveRecord::Schema.define(version: 20170107154026) do

  create_table "class_roles", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.date     "event_date"
    t.time     "event_start"
    t.time     "event_end"
    t.boolean  "important"
    t.integer  "user_id",     limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "guild_roles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "function",   limit: 255
    t.integer  "permition",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "gvg_cores", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.text     "description",            limit: 65535
    t.boolean  "recruiting"
    t.text     "recruiting_description", limit: 65535
    t.string   "avatar",                 limit: 255
    t.integer  "user_id",                limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "permitions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "permition",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "nick",                   limit: 255,                null: false
    t.string   "alt1",                   limit: 255
    t.string   "alt2",                   limit: 255
    t.boolean  "gvg"
    t.string   "status",                 limit: 255
    t.string   "avatar",                 limit: 255
    t.string   "account",                limit: 255
    t.string   "recruiter",              limit: 255
    t.string   "activity_hour",          limit: 255
    t.boolean  "recruitment"
    t.text     "reason",                 limit: 65535
    t.text     "last_guild",             limit: 65535
    t.integer  "item_id",                limit: 4
    t.integer  "player_type_id",         limit: 4
    t.integer  "class_role_id",          limit: 4
    t.integer  "guild_role_id",          limit: 4
    t.integer  "gvg_core_id",            limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "core_status",            limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
