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

ActiveRecord::Schema.define(version: 20170713052527) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.string   "est"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "hospital_patients", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "address"
    t.string   "ph_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hospital_physicians", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "specialization"
    t.integer  "experience"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "address"
    t.string   "ph_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients_physicians", id: false, force: :cascade do |t|
    t.integer "physician_id", null: false
    t.integer "patient_id",   null: false
  end

  create_table "physicians", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "specialization"
    t.integer  "experience"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.integer  "quantity"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "category_id"
    t.integer  "brand_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "promo_codes", force: :cascade do |t|
    t.string   "code"
    t.string   "valid_from"
    t.string   "valid_till"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_promo_codes_on_product_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
    t.index ["name"], name: "index_roles_on_name", using: :btree
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "firstname"
    t.string   "lastname"
    t.string   "username"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree
  end

  add_foreign_key "promo_codes", "products"
end
