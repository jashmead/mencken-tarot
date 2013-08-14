class CardsReferenceDecks < ActiveRecord::Migration
  def change
    change_table(:cards) do |t|
      t.remove( :deck_id )
      t.references( :deck )
    end
  end
end
