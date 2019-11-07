class TotalRecord < ApplicationRecord
  belongs_to :player

  def is_present
    if value.blank?
      0
    end
  end

end
