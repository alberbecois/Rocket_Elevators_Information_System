class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :business
      t.string :headquarter_address
      t.string :contact_full_name
      t.string :contact_phone
      t.string :contact_email
      t.string :business_description
      t.string :tech_full_name
      t.string :tech_phone
      t.string :tech_email
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
