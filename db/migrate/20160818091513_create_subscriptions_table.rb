class CreateSubscriptionsTable < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :user_id, null:false
      t.integer :stop_id, null:false
      t.integer :priority
      t.timestamps null:false
    end
  end
end
