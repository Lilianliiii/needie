class AddColumnsToSurvey < ActiveRecord::Migration[6.1]
  def change
    change_table :surveys do |t|
      25.times do |i|
        t.integer :"question_#{i}"
      end
    end
  end
end
