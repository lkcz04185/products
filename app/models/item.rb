class Item < ApplicationRecord
  validates :name, presence: true
  belongs_to :receipt, inverse_of: :items
  # belongs_to :variant, inverse_of: :items
end
