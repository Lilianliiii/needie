class AddAddressToWalks < ActiveRecord::Migration[6.1]
  def change
    add_column :walks, :address, :string
  end
end
