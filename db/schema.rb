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

ActiveRecord::Schema.define(version: 2019_09_09_100102) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.string "service_type"
    t.string "review_content"
    t.bigint "pet_id", null: false
    t.bigint "service_provider_id", null: false
    t.datetime "date"
    t.integer "duration"
    t.decimal "cost"
    t.integer "review_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pet_id"], name: "index_appointments_on_pet_id"
    t.index ["service_provider_id"], name: "index_appointments_on_service_provider_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pets", force: :cascade do |t|
    t.bigint "owner_id", null: false
    t.string "name"
    t.string "breed"
    t.string "gender"
    t.string "bio"
    t.string "pic_url"
    t.date "dob"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "species"
    t.index ["owner_id"], name: "index_pets_on_owner_id"
  end

  create_table "service_providers", force: :cascade do |t|
    t.string "company_name"
    t.string "location"
    t.string "service_types"
    t.integer "rating"
    t.string "bio"
    t.decimal "rates"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointments", "pets"
  add_foreign_key "appointments", "service_providers"
  add_foreign_key "pets", "owners"
end
