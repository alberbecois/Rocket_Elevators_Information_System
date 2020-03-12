class CreateElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :elevators do |t|
      t.integer :serial_number
      t.string :model
      t.string :elevatory_type
      t.string :status
      t.date :start_date
      t.date :last_check
      t.string :certificate
      t.text :information
      t.text :notes
      t.references :column, foreign_key: true

      t.timestamps
    end
  end
end
