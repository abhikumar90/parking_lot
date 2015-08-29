class CreateParkingSlots < ActiveRecord::Migration
  def change
    create_table :parking_slots do |t|
      t.integer :slot_number
      t.string :status

      t.timestamps null: false
    end
  end
end
