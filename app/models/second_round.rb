class SecondRound < ApplicationRecord
  belongs_to :player
  has_one :second_round_team
  has_one :manager
  has_one :point
end
