class FinalRound < ApplicationRecord
  belongs_to :player
  has_one :final_round_team
  has_one :participation
  has_one :manager
  has_one :point
end
