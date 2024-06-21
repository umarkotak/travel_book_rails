class CreateCampingPackets < ActiveRecord::Migration[7.1]
  def change
    create_table :camping_packets do |t|
      t.string :slug, null: false, index: { unique: true }
      t.string :name, null: false
      t.string :description
      t.string :main_thumbnail, null: false
      t.string :thumbnails, array: true, default: []
      t.column :started_at, 'timestamp with time zone', null: false
      t.column :ended_at, 'timestamp with time zone', null: false
      t.float :weekday_price, null: false
      t.float :weekend_price, null: false
      t.integer :daily_stock, null: false
      t.string :facilitates, array: true, default: []
      t.jsonb :specs, default: {}

      t.column :created_at, 'timestamp with time zone', null: false
      t.column :updated_at, 'timestamp with time zone', null: false
      t.column :deleted_at, 'timestamp with time zone'
    end
  end
end
