# create_table "users", force: :cascade do |t|
#   t.string "guid", null: false
#   t.string "name", null: false
#   t.string "email", null: false
#   t.string "phone", null: false
#   t.string "password", null: false
#   t.string "role", null: false
#   t.string "session"
#   t.string "verification", null: false
#   t.timestamptz "created_at", null: false
#   t.timestamptz "updated_at", null: false
#   t.index ["email"], name: "index_users_on_email", unique: true
# end

class User < ApplicationRecord
  validates :email,
            uniqueness: true
  validates :name, :email, :phone, :password,
            presence: true
  validates :role,
            inclusion: { in: %w(user admin) }
  validates :verification,
            inclusion: { in: %w(pending verified) }

  has_many :bookings
end
