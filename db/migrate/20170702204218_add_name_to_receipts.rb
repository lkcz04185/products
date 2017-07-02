class AddNameToReceipts < ActiveRecord::Migration[5.0]
  def change
    add_column :receipts, :name, :string
  end
end
