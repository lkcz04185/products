class Receipt < ApplicationRecord
  has_many :items, inverse_of: :receipt
  accepts_nested_attributes_for :items, 
end
