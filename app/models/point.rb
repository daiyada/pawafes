class Point < ApplicationRecord
  belongs_to :first_round
  belongs_to :second_round
  belongs_to :third_round
  belongs_to :fourth_round
  belongs_to :semi_final_round
  belongs_to :final_round
end
