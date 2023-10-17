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

ActiveRecord::Schema[7.0].define(version: 2023_10_13_152158) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendences", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.date "date"
    t.boolean "is_holidy"
    t.boolean "day_present"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_attendences_on_user_id"
  end

  create_table "employees", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "employee_id"
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_employees_on_user_id"
  end

  create_table "leaves", force: :cascade do |t|
    t.string "manager_id"
    t.string "team_lead_id"
    t.string "application_id"
    t.integer "status"
    t.text "reason"
    t.date "from_date"
    t.date "to_date"
    t.integer "leave_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.integer "total_leave"
    t.integer "role"
    t.string "first_name"
    t.string "last_name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "attendences", "users"
  add_foreign_key "employees", "users"
end
