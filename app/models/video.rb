class Video < ApplicationRecord
  has_one :therapy, as: :content
end
