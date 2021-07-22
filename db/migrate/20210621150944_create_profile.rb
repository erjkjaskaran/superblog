class CreateProfile < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone_number
      t.timestamps
    end
    add_reference :profiles, :user, null: false, foreign_key: true
  end
end
