class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.integer :BuildingID
      t.string :Adress
      t.string :LandLordfullname
      t.string :LandLordemail
      t.string :TCfullname
      t.string :TCemail
      t.string :TCphone
      t.timestamps
    end
  end
end
