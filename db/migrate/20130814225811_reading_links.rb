class ReadingLinks < ActiveRecord::Migration
  def change
    change_table(:readings) do |t|
      t.references(:person)
      t.references(:spread)
      t.references(:deck)
    end
  end
end
