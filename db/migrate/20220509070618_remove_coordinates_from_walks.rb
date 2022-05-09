class RemoveCoordinatesFromWalks < ActiveRecord::Migration[6.1]
  def change
    remove_column :walks, :coordinates, :string
  end
end
