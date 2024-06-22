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

ActiveRecord::Schema[7.1].define(version: 2024_06_22_053215) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booking_details", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "booking_id"
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.integer "weekday_price", default: 0
    t.integer "weekday_quantity", default: 0
    t.integer "weekend_price", default: 0
    t.integer "weekend_quantity", default: 0
    t.integer "quantity", null: false
    t.integer "total_price", null: false
    t.timestamptz "created_at", null: false
    t.timestamptz "updated_at", null: false
    t.timestamptz "deleted_at"
    t.index ["booking_id"], name: "index_booking_details_on_booking_id"
    t.index ["user_id"], name: "index_booking_details_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.string "number", null: false
    t.string "payment_number", null: false
    t.integer "total_price", null: false
    t.integer "discount_price", null: false
    t.string "mdr_cut", null: false
    t.string "grand_total_price", null: false
    t.string "status", null: false
    t.string "payment_status", null: false
    t.jsonb "payment_metada", default: {}
    t.timestamptz "started_at", null: false
    t.timestamptz "ended_at", null: false
    t.integer "num_nights", null: false
    t.jsonb "metadata", default: {}
    t.timestamptz "created_at", null: false
    t.timestamptz "updated_at", null: false
    t.timestamptz "deleted_at"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "camping_items", force: :cascade do |t|
    t.string "slug", null: false
    t.string "name", null: false
    t.string "image", null: false
    t.float "price", null: false
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
