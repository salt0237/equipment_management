class CreateLicenses < ActiveRecord::Migration[6.0]
  def change
    create_table :licenses do |t|
      t.text :license_id
      t.text :name
      t.text :number
      t.text :license_key
      t.text :memo

      t.timestamps
    end
  end
end
