class Product < ApplicationRecord
  validates :name, :description, presence: true
  has_many :variants
end
