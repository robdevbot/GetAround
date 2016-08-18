class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false, unique: true
      t.string :email, null: false, unique: true
      t.string :password_hash, null: false
      t.string :permissions, null:false
      t.timestamps null: false
    end
  end
end
