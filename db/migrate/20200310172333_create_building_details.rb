class CreateBuildingDetails < ActiveRecord::Migration[5.2]
  def change
      create_table :BuildingDetails do |t|
        t.integer :BuildingID
        t.string :BuildingType
        t.date :ConstructionYear
      t.timestamps
    end
  end
end
