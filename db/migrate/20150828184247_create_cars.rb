class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :registration_number
      t.string :color
      t.integer :parking_slot_id

      t.timestamps null: false
    end
  end
end
