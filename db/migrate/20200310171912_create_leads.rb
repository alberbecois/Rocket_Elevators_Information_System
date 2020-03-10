class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.integer :PersonID
      t.string :FullName
      t.string :CompanyName
      t.string :Email
      t.string :Phone
      t.string :ProjectName
      t.text :ProjectDescription
      t.string :Departement
      t.text :Comment
      t.date :DateRequested
      t.timestamps
    end
  end
end
