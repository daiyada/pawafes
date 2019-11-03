class ThirdRound < ApplicationRecord
  belongs_to :player
  has_one :third_round_team
  has_one :manager
  has_one :point
end
