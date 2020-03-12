class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :admin_full_name
      t.string :admin_email
      t.string :admin_phone
      t.string :tech_full_name
      t.string :tech_email
      t.string :tech_phone
      t.references :customer, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
