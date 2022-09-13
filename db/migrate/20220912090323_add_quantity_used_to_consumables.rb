class AddQuantityUsedToConsumables < ActiveRecord::Migration[6.0]
  def change
    add_column :consumables, :quantity_used, :string
  end
end
