class CreateCampingItems < ActiveRecord::Migration[7.1]
  def change
    create_table :camping_items do |t|
      t.string :slug, null: false, index: { unique: true }
      t.string :name, null: false
      t.string :image, null: false
      t.float :price, null: false
      t.integer :daily_stock, null: false

      t.column :created_at, 'timestamp with time zone', null: false
      t.column :updated_at, 'timestamp with time zone', null: false
      t.column :deleted_at, 'timestamp with time zone'
    end
  end
end
