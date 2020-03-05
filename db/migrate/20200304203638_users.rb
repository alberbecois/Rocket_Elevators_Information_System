class Users < ActiveRecord::Migration[5.2]
  def self.up
    create_table :users do |t|
       t.column :name, :string, :limit => 32, :null => false
       t.column :admin_level, :integer, :limit => 2, :null => false
    end
 end

 def self.down
    drop_table :users
 end
end