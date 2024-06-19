class CreateUser < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :guid
      t.string :name
      t.string :email
      t.string :phone
      t.string :password
      t.string :role
      t.string :session

      t.column :created_at, 'timestamp with time zone', null: false
      t.column :updated_at, 'timestamp with time zone', null: false
    end
  end
end
