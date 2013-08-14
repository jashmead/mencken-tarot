class Card < ActiveRecord::Base
  has_one :deck
  has_many :plays, :dependent => :destroy
end
