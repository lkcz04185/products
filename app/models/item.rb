class Item < ApplicationRecord
  belongs_to :receipt
  belongs_to :variant
end
