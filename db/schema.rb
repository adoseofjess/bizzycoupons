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

ActiveRecord::Schema.define(version: 20160505224039) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coupons", force: :cascade do |t|
    t.string   "discount_type"
    t.string   "code"
    t.integer  "value"
    t.datetime "ends_at"
    t.datetime "starts_at"
    t.string   "status"
    t.integer  "minimum_order_amount"
    t.integer  "usage_limit"
    t.integer  "applies_to_id"
    t.boolean  "applies_once"
    t.boolean  "applies_once_per_customer"
    t.string   "applies_to_resource"
    t.integer  "times_used"
  end

end
