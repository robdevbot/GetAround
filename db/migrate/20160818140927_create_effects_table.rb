class CreateEffectsTable < ActiveRecord::Migration
  def change
    create_table :effects do |t|
      t.integer :stop_id, null:false
      t.integer :event_id, null:false
      t.integer :severity
      t.timestamps null:false
    end
  end
end
