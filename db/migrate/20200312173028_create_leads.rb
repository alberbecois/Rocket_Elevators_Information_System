class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :full_name
      t.string :business
      t.string :email
      t.string :phone
      t.string :project_name
      t.string :description
      t.string :department
      t.text :message
      t.binary :file

      t.timestamps
    end
  end
end
