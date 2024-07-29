class CreateBookingDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :booking_details do |t|
      t.belongs_to :user
      t.belongs_to :booking

      t.string :item_type, null: false, index: true
      t.integer :item_id, null: false, index: true
      t.integer :weekday_price, default: 0
      t.integer :weekday_quantity, default: 0
      t.integer :weekend_price, default: 0
      t.integer :weekend_quantity, default: 0
      t.integer :quantity, null: false
      t.integer :total_price, null: false

      t.column :created_at, 'timestamp with time zone', null: false
      t.column :updated_at, 'timestamp with time zone', null: false
      t.column :deleted_at, 'timestamp with time zone'
    end
  end
end
