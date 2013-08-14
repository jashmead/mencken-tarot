class PlayLinks < ActiveRecord::Migration
  def change
    change_table(:plays) do |t|
      t.references(:reading)
      t.references(:card)
    end
  end
end
