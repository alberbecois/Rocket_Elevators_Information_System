class CreateBuildingDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :building_details do |t|
      t.string :information_key
      t.string :value
      t.references :building, foreign_key: true

      t.timestamps
    end
  end
end
