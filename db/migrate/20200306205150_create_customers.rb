class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.integer :PersonID
      t.date :DateCreated
      t.string :Company
      t.string :CompanyHQAdress
      t.string :CompanyContactFullName
      t.string :CompanyContactPhone
      t.string :CompanyContactEmail
      t.text :CompanyDescription
      t.string :STOfullname
      t.string :TOphone
      t.string :TMemail
    end
  end
end
