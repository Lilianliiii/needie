class CreateAnimations < ActiveRecord::Migration[6.1]
  def change
    create_table :animations do |t|
      t.string :link

      t.timestamps
    end
  end
end
