# creator_id is name of user who created this deck, defaults to mencken's id
#   validation is most gracefully done by hand, however

class Deck < ActiveRecord::Base
  validates_uniqueness_of :name
  has_one :person
end
