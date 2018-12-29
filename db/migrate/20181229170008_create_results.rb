class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.string :player_name
      t.integer :result_score
      t.references :score, foreign_key: true

      t.timestamps
    end
  end
end
