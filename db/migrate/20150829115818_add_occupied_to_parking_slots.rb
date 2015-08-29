class AddOccupiedToParkingSlots < ActiveRecord::Migration
  def change
    add_column :parking_slots, :occupied, :boolean
  end
end
