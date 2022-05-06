class AddImageToMood < ActiveRecord::Migration[6.1]
  def change
    add_column :moods, :image, :string
  end
end
