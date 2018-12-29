class AddColumnToScore < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :player, :string
  end
end
