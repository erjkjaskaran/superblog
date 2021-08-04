class AddColumnsToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :qty, :integer
    add_column :orders, :purpose, :integer
  end
end
