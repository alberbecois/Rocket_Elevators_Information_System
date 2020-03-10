class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.integer :BuildingID
      t.string :BuildingType
      t.integer :FloorServed
      t.string :ColumnStatus
      t.text :Info
      t.text :Notes
      t.timestamps
    end
  end
end
