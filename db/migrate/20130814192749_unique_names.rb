class UniqueNames < ActiveRecord::Migration
  def up
    execute("create unique index people_name_ux on people (name)")
    execute("create unique index people_email_ux on people (email)")
    execute("create unique index decks_name_ux on decks (name)")
  end
  def drop
    execute("drop index people_name_ux ")
    execute("drop index people_email_ux ")
    execute("drop index decks_name_ux ")
  end
end
