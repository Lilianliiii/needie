class Walk < ApplicationRecord
  has_one :therapy, as: :content
end
