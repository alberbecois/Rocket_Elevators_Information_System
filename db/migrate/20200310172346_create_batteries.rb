class CreateBatteries < ActiveRecord::Migration[5.2]
  def change
    create_table :batteries do |t|
      t.integer :BatteryID
      t.string :BuildingType
      t.string :BatteryStatus
      t.integer :ElevatorID
      t.date :CommisionDate
      t.date :LastInspection
      t.boolean :HasCertificate
      t.text :Info
      t.text :Notes
      t.timestamps
    end
  end
end
