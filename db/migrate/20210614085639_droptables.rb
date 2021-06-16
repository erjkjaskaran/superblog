class Droptables < ActiveRecord::Migration[6.1]
  def change
    drop_table :tables
    drop_table :table2s
  end
end
