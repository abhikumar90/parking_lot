class AddColumnToParkingSlot < ActiveRecord::Migration
  def change
    add_column :parking_slots, :car_id, :integer
  end
end
