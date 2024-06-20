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
