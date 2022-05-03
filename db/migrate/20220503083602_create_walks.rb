class CreateWalks < ActiveRecord::Migration[6.1]
  def change
    create_table :walks do |t|
      t.string :name
      t.string :coordinates

      t.timestamps
    end
  end
end
