class BuildingTypes < ActiveRecord::Migration[5.2]
  def self.up

  
    create_table :BuildingTypes do |t|
      t.column :type, :string
  end

    Building.create :type => "Residential"
    Buidling.create :type => "Commercial"
    Buiding.create :type => "Hybrid"
    Building.create :type => "Corporate"
end


def self.down
drop_table :BuildingTypes
end
end
