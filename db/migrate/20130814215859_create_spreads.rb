class CreateSpreads < ActiveRecord::Migration
  def change
    create_table :spreads do |t|
      t.string :name
      t.string :description
      t.boolean :master_spread

      t.timestamps
    end
  end
end
