class Player < ApplicationRecord
belongs_to :user
has_one :first_round, dependent: :destroy
has_one :first_round_record, dependent: :destroy
has_one :second_round, dependent: :destroy
has_one :second_round_record, dependent: :destroy
has_one :third_round, dependent: :destroy
has_one :third_round_record, dependent: :destroy
has_one :fourth_round, dependent: :destroy
has_one :fourth_round_record, dependent: :destroy
has_one :semi_final_round, dependent: :destroy
has_one :semi_final_round_record, dependent: :destroy
has_one :final_round, dependent: :destroy
has_one :final_round_record, dependent: :destroy
has_one :total_record, dependent: :destroy
end
