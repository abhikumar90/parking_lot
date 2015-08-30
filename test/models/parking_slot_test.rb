require 'test_helper'
#rake test test/models/parking_slot_test.rb
class ParkingSlotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

 test "save parking_slot new record" do
  parking_slot = ParkingSlot.new(occupied: false)
  assert parking_slot.save
end

end
