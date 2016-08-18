class CreateStopsTable < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.integer :line_id
      t.string :name, null:false, unique: true
      t.string :mode, null:false
      t.timestamps null:false
    end
  end
end
