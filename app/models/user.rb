class User < ApplicationRecord
  validates :email,
            uniqueness: true
  validates :name, :email, :phone, :password,
            presence: true
  validates :role,
            inclusion: { in: %w(user admin) }

  has_many :bookings
end
