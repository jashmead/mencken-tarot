class Play < ActiveRecord::Base
  belongs_to :card
  belongs_to :reading
end
