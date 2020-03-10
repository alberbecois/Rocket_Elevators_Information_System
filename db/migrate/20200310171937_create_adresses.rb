class CreateAdresses < ActiveRecord::Migration[5.2]
  def change
    create_table :adresses do |t|
      t.integer :PersonId
      t.string :AdressType
      t.string :PersonStatus
      t.string :Entity
      t.string :Street
      t.string :City
      t.string :PostalCode
      t.text :Notes
      t.date :DateRequested
      t.timestamps
    end
  end
end
