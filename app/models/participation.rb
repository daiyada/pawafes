class Participation < ApplicationRecord
  belongs_to :first_round, optional: true
  belongs_to :second_round, optional: true
  belongs_to :third_round, optional: true
  belongs_to :fourth_round, optional: true
  belongs_to :semi_final_round, optional: true
  belongs_to :final_round, optional: true
end
