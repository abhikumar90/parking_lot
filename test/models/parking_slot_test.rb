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

test "should not save parking_slot without car_id" do
  parking_slot = ParkingSlot.new
  assert_not parking_slot.save, "Saved the parking_slot without a car_id"
end
#Result:  Failure:ParkingSlotTest#test_should_not_save_parking_slot_without_car_id 
#Saved the parking_slot without a car_id

test "should compaire with parking_slot occupied" do
  parking_slot = ParkingSlot.create(occupied: true)
  assert_equal true, parking_slot.save
end

end
