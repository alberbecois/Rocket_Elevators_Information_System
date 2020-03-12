class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :business
      t.string :fullname
      t.string :email
      t.string :build_type
      t.integer :product_line
      t.integer :nb_cages
      t.integer :nb_appartment
      t.integer :nb_floors
      t.integer :nb_base
      t.integer :nb_occupants
      t.integer :elevator_units
      t.integer :installation_fe
      t.integer :p_line_selection
      t.integer :sum_total

      t.timestamps
    end
  end
end
