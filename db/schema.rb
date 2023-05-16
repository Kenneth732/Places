# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_05_16_085428) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "photographers", force: :cascade do |t|
    t.string "name"
    t.string "birthplace"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "image_url"
    t.string "category"
    t.string "discount"
    t.bigint "photographer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["photographer_id"], name: "index_photos_on_photographer_id"
  end

  add_foreign_key "photos", "photographers"
end
