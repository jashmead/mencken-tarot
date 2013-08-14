class SpreadsLinksUp < ActiveRecord::Migration
  def change
    change_table(:spreads) do |t|
      t.references( :person )
      t.references( :deck )
    end
  end
end
