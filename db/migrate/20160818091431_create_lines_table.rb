class CreateLinesTable < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :name, null:false, unique:true
      t.string :mode, null:false
      t.timestamps null:false
    end
  end
end
