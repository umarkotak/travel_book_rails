class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.belongs_to :user

      t.string :number, null: false
      t.string :payment_number, null: false
      t.integer :total_price, null: false
      t.integer :discount_price, null: false
      t.string :mdr_cut, null: false
      t.string :grand_total_price, null: false
      t.string :status, null: false
      t.string :payment_status, null: false
      t.jsonb :payment_metada, default: {}
      t.column :started_at, 'timestamp with time zone', null: false
      t.column :ended_at, 'timestamp with time zone', null: false
      t.integer :num_nights, null: false
      t.jsonb :metadata, default: {}

      t.column :created_at, 'timestamp with time zone', null: false
      t.column :updated_at, 'timestamp with time zone', null: false
      t.column :deleted_at, 'timestamp with time zone'
    end
  end
end
