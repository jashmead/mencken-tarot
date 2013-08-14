class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :position_order
      t.integer :position_x
      t.integer :position_y
      t.string :meaning_normal
      t.string :meaning_reversed

      t.timestamps
    end
  end
end
