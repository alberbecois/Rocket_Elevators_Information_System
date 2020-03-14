class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :address_type
      t.string :address
      t.string :appt_no
      t.string :city
      t.string :post_code
      t.string :country
      t.text :notes

      t.timestamps
    end
  end
end
