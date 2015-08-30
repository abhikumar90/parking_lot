class AddColumnToParkingSlots < ActiveRecord::Migration
  def change
    add_column :parking_slots, :slot_number, :string
    add_column :parking_slots, :status, :string
  end
end
