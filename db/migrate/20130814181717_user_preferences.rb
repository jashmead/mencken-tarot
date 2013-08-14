class UserPreferences < ActiveRecord::Migration
  def change
    change_table(:people) do |t|
      t.remove( :deck_id )
      t.column( :preferences, :text)
    end
    change_table(:decks) do |t|
      t.remove( :creator_id )
      t.references( :person )
    end
  end
end
