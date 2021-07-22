class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :label
      t.string :state_name
      t.string :country
      t.timestamps
    end
  end
end
