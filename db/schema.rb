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

ActiveRecord::Schema.define(version: 2024_12_28_011924) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "expenses", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "expensetable_type", null: false
    t.bigint "expensetable_id", null: false
    t.decimal "amount"
    t.datetime "date"
    t.string "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["expensetable_type", "expensetable_id"], name: "index_expenses_on_expensetable"
    t.index ["user_id"], name: "index_expenses_on_user_id"
  end

  create_table "incomes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "incometable_type", null: false
    t.bigint "incometable_id", null: false
    t.decimal "amount"
    t.datetime "date"
    t.string "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["incometable_type", "incometable_id"], name: "index_incomes_on_incometable"
    t.index ["user_id"], name: "index_incomes_on_user_id"
  end

  create_table "type_expenses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "type_expenses_users", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_type_expenses_users_on_user_id"
  end

  create_table "type_incomes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "type_incomes_users", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_type_incomes_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.decimal "age"
    t.string "gender"
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.boolean "family_plan"
    t.boolean "property_owner"
    t.decimal "properties"
    t.boolean "mortgages"
    t.decimal "number_mortgages"
    t.boolean "own_vehicles"
    t.decimal "number_vehicles"
    t.boolean "financings"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "language"
    t.string "role"
  end

  add_foreign_key "expenses", "users"
  add_foreign_key "incomes", "users"
  add_foreign_key "type_expenses_users", "users"
  add_foreign_key "type_incomes_users", "users"
end
