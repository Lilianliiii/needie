class Reading < ApplicationRecord
  has_one :therapy, as: :content
end
