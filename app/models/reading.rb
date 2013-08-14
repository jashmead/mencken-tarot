class Reading < ActiveRecord::Base
  belongs_to :person
  belongs_to :spread
  belongs_to :deck
end
