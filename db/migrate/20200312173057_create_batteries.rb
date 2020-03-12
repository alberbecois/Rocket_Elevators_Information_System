class CreateBatteries < ActiveRecord::Migration[5.2]
  def change
    create_table :batteries do |t|
      t.string :battery_type
      t.string :status
      t.date :commissioning_date
      t.date :last_inspection_date
      t.string :operation_certificate
      t.text :information
      t.text :notes
      t.references :building, foreign_key: true
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
