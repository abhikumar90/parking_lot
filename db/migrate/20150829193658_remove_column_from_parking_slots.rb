class RemoveColumnFromParkingSlots < ActiveRecord::Migration
  def change
    remove_column :parking_slots, :status, :string
    remove_column :parking_slots, :slot_number, :integer
  end
end
