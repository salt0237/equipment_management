class CreateMachineListNews < ActiveRecord::Migration[6.0]
  def change
    create_table :machine_list_news do |t|
      t.text :hard
      t.text :CPU
      t.text :HDD
      t.text :memory
      t.text :OS
      t.text :IP
      t.text :grade
      t.text :namber
      t.text :name
      t.text :place
      t.text :power
      t.text :drive
      t.text :day
      t.text :memo

      t.timestamps
    end
  end
end
