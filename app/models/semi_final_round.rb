class SemiFinalRound < ApplicationRecord
  belongs_to :player
  has_one :semi_final_round_team
  has_one :manager
  has_one :point
end
