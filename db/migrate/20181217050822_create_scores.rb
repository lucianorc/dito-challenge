class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.integer :uid
      t.string :username
      t.integer :points
      t.date :date

      t.timestamps
    end
  end
end
