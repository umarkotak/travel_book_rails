class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :guid, null: false
      t.string :name, null: false
      t.string :email, null: false, index: { unique: true }
      t.string :phone, null: false
      t.string :password, null: false
      t.string :role, null: false
      t.string :session
      t.string :verification, null: false

      t.column :created_at, 'timestamp with time zone', null: false
      t.column :updated_at, 'timestamp with time zone', null: false
    end
  end
end
