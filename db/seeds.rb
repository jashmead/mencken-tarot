# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# could use a 'clear data' option somewhere, to simplify resets

mencken = Person.create!( name: 'mencken', email: 'mencken@menckentarot.com', person_status: 'master' )
claire = Person.create!( name: 'cashmead', email: 'cashmead@menckentarot.com', person_status: 'admin' )
john = Person.create!( name: 'jashmead', email: 'jashmead@menckentarot.com', person_status: 'admin' )

deck1 = Deck.create!( name: 'Waite', summary: 'Waite Tarot Deck', person_id: mencken.id, deck_status: 'primary')
deck2 = Deck.create!( name: 'Mencken', summary: "Mencken's Tarot Deck", person_id: mencken.id, deck_status: 'primary')
