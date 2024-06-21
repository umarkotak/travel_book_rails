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

ActiveRecord::Schema[7.1].define(version: 2024_06_19_234942) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "camping_items", force: :cascade do |t|
    t.string "slug", null: false
    t.string "name", null: false
    t.string "description"
    t.string "thumbnail_url", null: false
    t.float "weekday_price", null: false
    t.float "weekend_price", null: false
    t.integer "daily_stock", null: false
    t.timestamptz "created_at", null: false
    t.timestamptz "updated_at", null: false
    t.timestamptz "deleted_at"
    t.index ["slug"], name: "index_camping_items_on_slug", unique: true
  end

  create_table "camping_packets", force: :cascade do |t|
    t.string "slug", null: false
    t.string "name", null: false
    t.string "description"
    t.string "main_thumbnail", null: false
    t.string "thumbnails", default: [], array: true
    t.timestamptz "started_at", null: false
    t.timestamptz "ended_at", null: false
    t.float "weekday_price", null: false
    t.float "weekend_price", null: false
    t.integer "daily_stock", null: false
    t.string "facilitates", default: [], array: true
    t.jsonb "specs", default: {}
    t.timestamptz "created_at", null: false
    t.timestamptz "updated_at", null: false
    t.timestamptz "deleted_at"
    t.index ["slug"], name: "index_camping_packets_on_slug", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "guid", null: false
    t.string "name", null: false
    t.string "email", null: false
    t.string "phone", null: false
    t.string "password", null: false
    t.string "role", null: false
    t.string "session"
    t.string "verification", null: false
    t.timestamptz "created_at", null: false
    t.timestamptz "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
