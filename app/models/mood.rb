class Mood < ApplicationRecord
  has_many :user_moods
  has_many :therapies
end
