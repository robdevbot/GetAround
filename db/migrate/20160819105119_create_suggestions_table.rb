class CreateSuggestionsTable < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :name, null:false
      t.string :description
      t.datetime :start_time, null:false
      t.datetime :end_time
      t.timestamps null:false
    end
  end
end
