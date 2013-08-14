class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.boolean :major_arcana
      t.string :suit
      t.string :description
      t.string :tags_plus
      t.string :tags_minus
      t.string :text_forward
      t.string :text_reversed
      t.integer :deck_id
      t.binary :card_image_upright
      t.binary :card_image_reversed
      t.binary :card_thumbnail

      t.timestamps
    end
  end
end
