class RemoveColumnToCar < ActiveRecord::Migration
  def change
    remove_column :cars, :parking_slot_id, :integer
  end
end
