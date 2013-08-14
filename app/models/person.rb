class Person < ActiveRecord::Base
  validates_uniqueness_of :name
  validates_uniqueness_of :email
  has_many :decks, :dependent => :nullify
  has_many :spreads, :dependent => :destroy
end
