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

ActiveRecord::Schema.define(version: 20160825135851) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "type"
    t.string   "name"
    t.string   "description"
    t.string   "address"
    t.integer  "cost"
    t.integer  "duration"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "activity_dayplanners", force: :cascade do |t|
    t.integer  "activity_id"
    t.integer  "dayplanner_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["activity_id"], name: "index_activity_dayplanners_on_activity_id", using: :btree
    t.index ["dayplanner_id"], name: "index_activity_dayplanners_on_dayplanner_id", using: :btree
  end

  create_table "activity_polterabends", force: :cascade do |t|
    t.integer  "total_upvotes"
    t.integer  "polterabend_id"
    t.integer  "activity_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["activity_id"], name: "index_activity_polterabends_on_activity_id", using: :btree
    t.index ["polterabend_id"], name: "index_activity_polterabends_on_polterabend_id", using: :btree
  end

  create_table "dayplanners", force: :cascade do |t|
    t.datetime "datetime"
    t.integer  "polterabend_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["polterabend_id"], name: "index_dayplanners_on_polterabend_id", using: :btree
  end

  create_table "favourites", force: :cascade do |t|
    t.integer  "activity_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["activity_id"], name: "index_favourites_on_activity_id", using: :btree
    t.index ["user_id"], name: "index_favourites_on_user_id", using: :btree
  end

  create_table "memberships", force: :cascade do |t|
    t.boolean  "organiser"
    t.integer  "user_id"
    t.integer  "polterabend_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["polterabend_id"], name: "index_memberships_on_polterabend_id", using: :btree
    t.index ["user_id"], name: "index_memberships_on_user_id", using: :btree
  end

  create_table "polterabends", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "photo"
  end

  create_table "upvotes", force: :cascade do |t|
    t.integer  "activity_polterabend_id"
    t.integer  "user_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["activity_polterabend_id"], name: "index_upvotes_on_activity_polterabend_id", using: :btree
    t.index ["user_id"], name: "index_upvotes_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false, null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
    t.string   "photo"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "activity_dayplanners", "activities"
  add_foreign_key "activity_dayplanners", "dayplanners"
  add_foreign_key "activity_polterabends", "activities"
  add_foreign_key "activity_polterabends", "polterabends"
  add_foreign_key "dayplanners", "polterabends"
  add_foreign_key "favourites", "activities"
  add_foreign_key "favourites", "users"
  add_foreign_key "memberships", "polterabends"
  add_foreign_key "memberships", "users"
  add_foreign_key "upvotes", "activity_polterabends"
  add_foreign_key "upvotes", "users"
end
