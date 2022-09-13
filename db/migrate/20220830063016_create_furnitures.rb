class CreateFurnitures < ActiveRecord::Migration[6.0]
  def change
    create_table :furnitures do |t|
      t.text :name
      t.text :number
      t.text :person
      t.text :place
      t.text :day
      t.text :memo
      t.boolean :flag

      t.timestamps
    end
  end
end
