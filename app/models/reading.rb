class Reading < ActiveRecord::Base
  belongs_to :person
  belongs_to :spread
  belongs_to :deck
  has_many :plays, :dependent => :destroy
end
