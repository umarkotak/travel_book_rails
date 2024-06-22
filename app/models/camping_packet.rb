# create_table "camping_packets", force: :cascade do |t|
#   t.string "slug", null: false
#   t.string "name", null: false
#   t.string "description"
#   t.string "main_thumbnail", null: false
#   t.string "thumbnails", default: [], array: true
#   t.timestamptz "started_at", null: false
#   t.timestamptz "ended_at", null: false
#   t.float "weekday_price", null: false
#   t.float "weekend_price", null: false
#   t.integer "daily_stock", null: false
#   t.string "facilitates", default: [], array: true
#   t.jsonb "specs", default: {}
#   t.timestamptz "created_at", null: false
#   t.timestamptz "updated_at", null: false
#   t.timestamptz "deleted_at"
#   t.index ["slug"], name: "index_camping_packets_on_slug", unique: true
# end

class CampingPacket < ApplicationRecord
end
