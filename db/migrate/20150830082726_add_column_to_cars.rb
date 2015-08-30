class AddColumnToCars < ActiveRecord::Migration
  def change
    add_column :cars, :parking_slot_id, :integer
  end
end
