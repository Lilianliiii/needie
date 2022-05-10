class AddAffirmationToReadings < ActiveRecord::Migration[6.1]
  def change
    add_column :readings, :affirmations, :text, array: true, default: []
  end
end
