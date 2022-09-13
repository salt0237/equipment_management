class AddDayToConsumables < ActiveRecord::Migration[6.0]
  def change
    add_column :consumables, :day, :string
  end
end
