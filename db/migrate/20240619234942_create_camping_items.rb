class CreateCampingItems < ActiveRecord::Migration[7.1]
  def change
    create_table :camping_items do |t|
      t.string :slug, null: false, index: { unique: true }
      t.string :name, null: false
      t.string :description
      t.string :thumbnail_url, null: false
      t.float :weekday_price, null: false
      t.float :weekend_price, null: false
      t.integer :daily_stock, null: false

      t.column :created_at, 'timestamp with time zone', null: false
      t.column :updated_at, 'timestamp with time zone', null: false
      t.column :deleted_at, 'timestamp with time zone'
    end
  end
end
