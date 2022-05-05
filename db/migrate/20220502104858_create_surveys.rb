class CreateSurveys < ActiveRecord::Migration[6.1]
  def change
    create_table :surveys do |t|
      t.references :user, null: true, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
