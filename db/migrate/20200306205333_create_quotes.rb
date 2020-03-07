class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.references :customer, foreign_key: true
      t.string :project_type
      t.string :num_elevators
      t.string :product

      t.timestamps
    end
  end
end
