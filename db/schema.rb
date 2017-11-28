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

ActiveRecord::Schema.define(version: 20171128112947) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "features", force: :cascade do |t|
    t.string   "name"
    t.string   "fontawesome_logo"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "flat_options", force: :cascade do |t|
    t.string   "optional_description"
    t.integer  "flat_id"
    t.integer  "feature_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["feature_id"], name: "index_flat_options_on_feature_id", using: :btree
    t.index ["flat_id"], name: "index_flat_options_on_flat_id", using: :btree
  end

  create_table "flats", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "category"
    t.integer  "price"
    t.integer  "capacity"
    t.string   "address"
    t.integer  "post_code"
    t.string   "city"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "photo"
    t.integer  "profile_id"
    t.index ["profile_id"], name: "index_flats_on_profile_id", using: :btree
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.integer  "post_code"
    t.string   "city"
    t.string   "phone_number"
    t.string   "sex"
    t.integer  "birth_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "photo"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "rents", force: :cascade do |t|
    t.integer  "number_of_people"
    t.integer  "check_in_date"
    t.integer  "check_out_date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "content"
    t.string   "title_review"
    t.integer  "profile_id"
    t.integer  "flat_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["flat_id"], name: "index_reviews_on_flat_id", using: :btree
    t.index ["profile_id"], name: "index_reviews_on_profile_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "flat_options", "features"
  add_foreign_key "flat_options", "flats"
  add_foreign_key "flats", "profiles"
  add_foreign_key "profiles", "users"
  add_foreign_key "reviews", "flats"
  add_foreign_key "reviews", "profiles"
end
