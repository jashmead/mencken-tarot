## for perf reasons, ultimately expect we will have the (so far) three images map into filenames
class Card < ActiveRecord::Base
  has_one :deck
  has_many :plays, :dependent => :destroy
end
