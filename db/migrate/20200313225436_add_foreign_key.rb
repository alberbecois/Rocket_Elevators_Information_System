class AddForeignKey < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :address_id, :bigint
    add_foreign_key :customers, :addresses
  end
end
