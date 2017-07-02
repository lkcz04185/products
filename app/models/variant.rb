class Variant < ApplicationRecord
  belongs_to :product, inverse_of: :variants
  has_many :items
end
