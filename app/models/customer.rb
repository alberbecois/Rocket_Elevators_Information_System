class Customer < ApplicationRecord
  has_many :buildings
  has_many :addresses

end
