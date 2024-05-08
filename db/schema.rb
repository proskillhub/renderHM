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

ActiveRecord::Schema[7.1].define(version: 2024_05_08_094319) do
  create_table "beds", force: :cascade do |t|
    t.string "bed_size"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "check_ins", force: :cascade do |t|
    t.string "guest_id"
    t.string "guest_name"
    t.string "address"
    t.integer "phone_number"
    t.string "id_type"
    t.string "id_number"
    t.string "gender"
    t.string "purpose"
    t.datetime "arrival_and_departure"
    t.string "note"
    t.datetime "check_in_date"
    t.time "check_in_time"
    t.integer "no_of_day"
    t.datetime "check_out_date"
    t.datetime "check_out_time"
    t.decimal "total_charges"
    t.integer "number_of_adults"
    t.integer "number_of_children"
    t.integer "bed_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "room_detail_id", null: false
    t.integer "room_type_id", null: false
    t.index ["bed_id"], name: "index_check_ins_on_bed_id"
    t.index ["room_detail_id"], name: "index_check_ins_on_room_detail_id"
    t.index ["room_type_id"], name: "index_check_ins_on_room_type_id"
  end

  create_table "employee_details", force: :cascade do |t|
    t.string "employee_name"
    t.string "parents_name"
    t.string "contact_number_no"
    t.string "identification_card"
    t.string "designation"
    t.date "joining_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.integer "contact"
    t.integer "tinno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_details", force: :cascade do |t|
    t.integer "room_no"
    t.decimal "rent_per_day"
    t.integer "room_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "roomstatus"
    t.index ["room_type_id"], name: "index_room_details_on_room_type_id"
  end

  create_table "room_types", force: :cascade do |t|
    t.string "room_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "check_ins", "beds"
  add_foreign_key "check_ins", "room_details"
  add_foreign_key "check_ins", "room_types"
  add_foreign_key "room_details", "room_types"
end
