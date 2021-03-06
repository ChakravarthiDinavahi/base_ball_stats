class BaseBallStat < ApplicationRecord
  validates_uniqueness_of :player_name
end
