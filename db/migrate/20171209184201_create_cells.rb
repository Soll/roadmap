class CreateCells < ActiveRecord::Migration
  def change
    create_table :cells do |t|
      t.integer :month
      t.integer :year

      t.timestamps null: false
    end
  end
end
