class Item < ApplicationRecord
  belongs_to :receipt, inverse_of: :items
  belongs_to :variant
end
