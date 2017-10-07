class Variant < ApplicationRecord
  validates :name, presence: true
  belongs_to :product, inverse_of: :variants
  # has_many :items, inverse_of: :variant
end
