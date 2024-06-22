# create_table "camping_items", force: :cascade do |t|
#   t.string "slug", null: false
#   t.string "name", null: false
#   t.string "image", null: false
#   t.float "price", null: false
#   t.integer "daily_stock", null: false
#   t.timestamptz "created_at", null: false
#   t.timestamptz "updated_at", null: false
#   t.timestamptz "deleted_at"
#   t.index ["slug"], name: "index_camping_items_on_slug", unique: true
# end

class CampingItem < ApplicationRecord
end
