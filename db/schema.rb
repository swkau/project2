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

ActiveRecord::Schema.define(version: 20160323110158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "name"
    t.text     "desc"
    t.string   "industry"
    t.string   "relationship_type"
    t.string   "company_size"
    t.string   "company_email"
    t.string   "company_phone"
    t.string   "company_fax"
    t.string   "company_address1"
    t.string   "company_address2"
    t.string   "company_state"
    t.string   "company_country"
    t.boolean  "status"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
    t.string   "website"
  end

  create_table "activities", force: :cascade do |t|
    t.string   "name"
    t.string   "activity_type"
    t.text     "desc"
    t.datetime "start"
    t.datetime "end"
    t.boolean  "status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.integer  "account_id"
    t.integer  "contact_id"
    t.integer  "opportunity_id"
    t.integer  "support_case_id"
    t.integer  "lead_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "desc"
    t.string   "job_position"
    t.string   "role"
    t.string   "email"
    t.string   "phone"
    t.string   "mobile"
    t.string   "address1"
    t.string   "address2"
    t.string   "state"
    t.string   "country"
    t.boolean  "status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.integer  "account_id"
  end

  create_table "leads", force: :cascade do |t|
    t.string   "name"
    t.text     "desc"
    t.string   "source"
    t.string   "contact_name"
    t.string   "company_name"
    t.string   "contact_email"
    t.string   "phone"
    t.boolean  "qualified"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
  end

  create_table "opportunities", force: :cascade do |t|
    t.string   "name"
    t.text     "desc"
    t.string   "stage"
    t.float    "value"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "account_id"
    t.integer  "contact_id"
  end

  create_table "role_accesses", force: :cascade do |t|
    t.string   "name"
    t.integer  "lead_c"
    t.integer  "lead_r"
    t.integer  "lead_u"
    t.integer  "lead_d"
    t.integer  "account_c"
    t.integer  "account_r"
    t.integer  "account_u"
    t.integer  "account_d"
    t.integer  "opportunity_c"
    t.integer  "opportunity_r"
    t.integer  "opportunity_u"
    t.integer  "opportunity_d"
    t.integer  "contact_c"
    t.integer  "contact_r"
    t.integer  "contact_u"
    t.integer  "contact_d"
    t.integer  "case_c"
    t.integer  "case_r"
    t.integer  "case_u"
    t.integer  "case_d"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "support_cases", force: :cascade do |t|
    t.string   "name"
    t.text     "desc"
    t.string   "stage"
    t.text     "solution"
    t.boolean  "status"
    t.datetime "close_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "contact_id"
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
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "status"
    t.integer  "role_access_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
