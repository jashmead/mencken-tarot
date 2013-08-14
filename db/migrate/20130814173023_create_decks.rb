class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :name
      t.string :summary
      t.text :description
      t.integer :cloned_from_id
      t.integer :creator_id
      t.string :deck_status

      t.timestamps
    end
  end
end
