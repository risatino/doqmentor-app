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

ActiveRecord::Schema.define(version: 20161121214848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.string   "notes"
    t.integer  "user_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.boolean  "active",             default: true
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "design_contracts", force: :cascade do |t|
    t.string   "designer"
    t.string   "client"
    t.string   "gig_name"
    t.string   "title"
    t.string   "due_date"
    t.string   "specs"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "billable_hours",         default: 0
    t.boolean  "active",                 default: true
    t.string   "signature_file_name"
    t.string   "signature_content_type"
    t.integer  "signature_file_size"
    t.datetime "signature_updated_at"
  end

  create_table "gigs", force: :cascade do |t|
    t.integer  "client_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "legal_contract_id"
    t.integer  "music_contract_id"
    t.integer  "design_contract_id"
    t.boolean  "active",             default: true
  end

  create_table "images", force: :cascade do |t|
    t.string   "url"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.integer  "client_id"
    t.integer  "legal_contract_id"
    t.integer  "design_contract_id"
    t.integer  "music_contract_id"
  end

  create_table "leads", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "phone"
    t.string   "company"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "legal_contracts", force: :cascade do |t|
    t.string   "videographer"
    t.string   "hiring_attorney"
    t.string   "firm"
    t.string   "recording_venue"
    t.string   "due_date"
    t.string   "instructions"
    t.string   "witness"
    t.string   "ticket_name"
    t.string   "media_format"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "billable_hours",         default: 0
    t.boolean  "active",                 default: true
    t.string   "signature_file_name"
    t.string   "signature_content_type"
    t.integer  "signature_file_size"
    t.datetime "signature_updated_at"
  end

  create_table "music_contracts", force: :cascade do |t|
    t.string   "musician"
    t.string   "client"
    t.string   "gig_name"
    t.string   "title"
    t.string   "event_venue"
    t.string   "notes"
    t.string   "due_date"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "billable_hours",         default: 0
    t.boolean  "active",                 default: true
    t.string   "signature_file_name"
    t.string   "signature_content_type"
    t.integer  "signature_file_size"
    t.datetime "signature_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "admin",           default: false
  end

end
