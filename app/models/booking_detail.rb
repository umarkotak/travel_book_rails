# create_table "booking_details", force: :cascade do |t|
#   t.bigint "user_id"
#   t.bigint "booking_id"
#   t.string "item_type", null: false
#   t.integer "item_id", null: false
#   t.integer "weekday_price", default: 0
#   t.integer "weekday_quantity", default: 0
#   t.integer "weekend_price", default: 0
#   t.integer "weekend_quantity", default: 0
#   t.integer "quantity", null: false
#   t.integer "total_price", null: false
#   t.timestamptz "created_at", null: false
#   t.timestamptz "updated_at", null: false
#   t.timestamptz "deleted_at"
#   t.index ["booking_id"], name: "index_booking_details_on_booking_id"
#   t.index ["user_id"], name: "index_booking_details_on_user_id"
# end

class BookingDetail < ApplicationRecord
  validates :item_type,
            inclusion: { in: %w(camping_packet camping_item) }

  belongs_to :user
  belongs_to :booking
end
