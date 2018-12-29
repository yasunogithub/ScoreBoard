class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.string :title
      t.integer :score

      t.timestamps
    end
  end
end
