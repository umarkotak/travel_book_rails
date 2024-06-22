# create_table "bookings", force: :cascade do |t|
#   t.bigint "user_id"
#   t.string "number", null: false
#   t.string "payment_number", null: false
#   t.integer "total_price", null: false
#   t.integer "discount_price", null: false
#   t.string "mdr_cut", null: false
#   t.string "grand_total_price", null: false
#   t.string "status", null: false
#   t.string "payment_status", null: false
#   t.jsonb "payment_metada", default: {}
#   t.timestamptz "started_at", null: false
#   t.timestamptz "ended_at", null: false
#   t.integer "num_nights", null: false
#   t.jsonb "metadata", default: {}
#   t.timestamptz "created_at", null: false
#   t.timestamptz "updated_at", null: false
#   t.timestamptz "deleted_at"
#   t.index ["user_id"], name: "index_bookings_on_user_id"
# end

class Booking < ApplicationRecord
  belongs_to :user
end
