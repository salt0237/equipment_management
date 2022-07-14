class CreateConsumables < ActiveRecord::Migration[6.0]
  def change
    create_table :consumables do |t|
      t.text :name
      t.text :place
      t.text :memo

      t.timestamps
    end
  end
end
