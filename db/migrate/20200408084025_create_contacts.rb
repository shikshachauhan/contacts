class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.references :user
      t.string :number, unique: true, null: false
      t.integer :device_type
      t.integer :location_type
      t.string :country_code
      t.string :state_code
      t.timestamps
    end
  end
end
