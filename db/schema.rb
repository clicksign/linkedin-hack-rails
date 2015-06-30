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

ActiveRecord::Schema.define(version: 20150630071810) do

  create_table "campaigns", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "campaigns", ["title"], name: "index_campaigns_on_title", unique: true

  create_table "emails", force: :cascade do |t|
    t.string   "domain"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "googles", force: :cascade do |t|
    t.string   "couch_id"
    t.string   "query"
    t.string   "title"
    t.string   "link"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company"
    t.string   "title"
    t.string   "address_full"
    t.string   "address_city"
    t.string   "address_country"
    t.string   "image"
    t.string   "linkedin_id"
    t.string   "linkedin_url"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "linkedin_company_id"
    t.string   "website"
    t.string   "gender"
    t.string   "company_gender"
    t.string   "source"
    t.string   "vertical"
    t.string   "email"
    t.integer  "campaign_id"
    t.string   "domain"
  end

  add_index "profiles", ["campaign_id"], name: "index_profiles_on_campaign_id"

end
