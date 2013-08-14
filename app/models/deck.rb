# person_id is name of user who created this deck, defaults to mencken's id
# may want to add a suits field:  i.e. replacements for swords, wands, cups, pentacles

class Deck < ActiveRecord::Base
  validates_uniqueness_of :name
  has_one :person
  has_many :cards, :dependent => :destroy
  has_many :spreads, :dependent => :nullify
  has_many :readings, :dependent => :nullify
end
