class Park < ApplicationRecord
  has_many :images
  has_many :fees
  has_many :addresses
end
