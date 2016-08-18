class CreateEventsTable < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null:false
      t.string :description
      t.datetime :start_time, null:false
      t.datetime :end_time
      t.boolean :over, null:false
      t.timestamps null:false
    end
  end
end
