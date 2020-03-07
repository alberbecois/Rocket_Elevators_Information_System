class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :bname
      t.string :primary
      t.string :secondary

      t.timestamps
    end
  end
end
