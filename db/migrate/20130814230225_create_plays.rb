class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.integer :play_order
      t.boolean :play_normal
      t.string :play_tags
      t.string :play_text

      t.timestamps
    end
  end
end
