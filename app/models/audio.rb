class Audio < ApplicationRecord
  has_one :therapy, as: :content
end
