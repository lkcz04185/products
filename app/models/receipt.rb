class Receipt < ApplicationRecord
  validates :name, presence: true
  has_many :items, inverse_of: :receipt
  has_many :variants, through: :items, inverse_of: :receipt
  accepts_nested_attributes_for :items
end
