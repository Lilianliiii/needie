class AddDateToUserMood < ActiveRecord::Migration[6.1]
  def change
    add_column :user_moods, :date, :datetime, default: Date.today
  end
end
