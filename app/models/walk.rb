class Walk < ApplicationRecord
  has_one :therapy, as: :content

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
