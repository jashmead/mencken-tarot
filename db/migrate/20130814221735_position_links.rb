class PositionLinks < ActiveRecord::Migration
  def change
    change_table(:positions) do |t| 
      t.references(:spread)
    end
  end
end
