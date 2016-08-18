class CreateSubscriptionsTable < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :line_id
      t.integer :priority
      t.timestamps null:false
    end
  end
end
