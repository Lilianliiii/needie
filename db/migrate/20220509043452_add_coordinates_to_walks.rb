class AddCoordinatesToWalks < ActiveRecord::Migration[6.1]
  def change
    add_column :walks, :latitude, :float
    add_column :walks, :longitude, :float
  end
end
