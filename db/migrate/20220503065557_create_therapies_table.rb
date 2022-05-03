class CreateTherapiesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :therapies do |t|
      t.references :mood, null: false, foreign_key: true
      t.string :category
      t.string :sub_category
      t.references :content, polymorphic: true

      t.timestamps
    end
  end
end
