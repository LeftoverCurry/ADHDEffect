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

ActiveRecord::Schema.define(version: 2020_08_17_180246) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "effectivenesses", force: :cascade do |t|
    t.bigint "record_id", null: false
    t.integer "data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_id"], name: "index_effectivenesses_on_record_id"
  end

  create_table "effects", force: :cascade do |t|
    t.datetime "datetime"
    t.integer "mood"
    t.text "side_effects", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.integer "effectiveness"
    t.index ["user_id"], name: "index_effects_on_user_id"
  end

  create_table "entries", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "date_of_report"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_entries_on_user_id"
  end

  create_table "moods", force: :cascade do |t|
    t.bigint "record_id", null: false
    t.integer "data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_id"], name: "index_moods_on_record_id"
  end

  create_table "records", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "date_of_report"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_records_on_user_id"
  end

  create_table "side_effects", force: :cascade do |t|
    t.bigint "record_id", null: false
    t.text "data", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_id"], name: "index_side_effects_on_record_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "user_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "effectivenesses", "records"
  add_foreign_key "effects", "users"
  add_foreign_key "entries", "users"
  add_foreign_key "moods", "records"
  add_foreign_key "records", "users"
  add_foreign_key "side_effects", "records"
end
