class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.text :about_me
      t.integer :deck_id
      t.string :person_status

      t.timestamps
    end
  end
end
