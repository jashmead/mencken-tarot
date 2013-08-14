class Spread < ActiveRecord::Base
  belongs_to :person
  belongs_to :deck
  has_many :positions
  has_many :readings
end
