class CreateElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :elevators do |t|
      t.integer :ElevatorID
      t.string :ElevatorSerialNumber
      t.string :Model
      t.string :ElevatorBuildingType
      t.string :ElevatorStatus
      t.date :DateCommissioned
      t.boolean :HasCertificate
      t.text :Info
      t.text :Notes
      t.timestamps
    end
  end
end
