class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :name
      t.string :brand
      t.date :year_released
      t.string :camera
      t.integer :mpixels
      t.integer :internal_storage
      t.integer :sim_slot
      t.string :size
      t.string :operating_system
      t.integer :stock

      t.timestamps
    end
  end
end
