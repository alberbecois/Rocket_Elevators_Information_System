class QuoteResults < ActiveRecord::Migration[5.2]
  def self.up
    create_table :QuoteResults do |t|
      t.column :ElevatorsNb, :integer
      t.column :InstallationPrice, :float
  end
end

def self.down
  drop_table :QuoteResults
  end
end