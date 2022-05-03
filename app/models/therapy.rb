class Therapy < ApplicationRecord
  belongs_to :content, polymorphic: true
  belongs_to :mood
end
