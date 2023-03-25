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

ActiveRecord::Schema.define(version: 2023_03_25_143258) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "panels", force: :cascade do |t|
    t.boolean "hybrid"
    t.string "code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "pvmes_declaration_id", null: false
    t.index ["pvmes_declaration_id"], name: "index_panels_on_pvmes_declaration_id"
  end

  create_table "pvmes_declarations", force: :cascade do |t|
    t.string "compagny_name"
    t.string "compagny_siren"
    t.string "customer_name"
    t.string "customer_email"
    t.string "customer_phone"
    t.string "adress"
    t.date "date_of_installation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "panels", "pvmes_declarations"
end
