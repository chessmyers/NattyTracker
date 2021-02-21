# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_20_213319) do

  create_table "addresses", force: :cascade do |t|
    t.integer "park_id"
    t.string "type"
    t.string "line_1"
    t.string "line_2"
    t.string "city"
    t.string "state"
    t.string "postal_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["park_id"], name: "index_addresses_on_park_id"
  end

  create_table "fees", force: :cascade do |t|
    t.integer "park_id"
    t.string "title"
    t.text "description"
    t.float "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["park_id"], name: "index_fees_on_park_id"
  end

  create_table "images", force: :cascade do |t|
    t.integer "park_id"
    t.string "title"
    t.string "caption"
    t.string "alt_text"
    t.string "credit"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["park_id"], name: "index_images_on_park_id"
  end

  create_table "parks", force: :cascade do |t|
    t.string "name"
    t.string "park_code"
    t.text "description"
    t.string "url"
    t.float "latitude"
    t.float "longitude"
    t.string "state"
    t.string "email"
    t.string "phone"
    t.string "fax"
    t.text "directions"
    t.string "directions_url"
    t.text "weather"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "addresses", "parks"
  add_foreign_key "fees", "parks"
  add_foreign_key "images", "parks"
end
