class AddQuantityAvailableToConsumables < ActiveRecord::Migration[6.0]
  def change
    add_column :consumables, :quantity_available, :string
  end
end
