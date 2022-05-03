class Animation < ApplicationRecord
  has_one :therapy, as: :content
end
