class AddVariantId < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :variant_id, :integer
  end
end
