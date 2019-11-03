class FourthRound < ApplicationRecord
  belongs_to :player
  has_one :fourth_round_team
  has_one :manager
  has_one :point
end
