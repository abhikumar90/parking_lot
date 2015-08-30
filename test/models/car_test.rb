require 'test_helper'

class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
test "save car new record" do
  car = Car.new
  assert car.save
end

test "should check car record nil or not" do
  car = Car.new
  assert_nil car.id
end

 test "should compaire with car color" do
  car = Car.create(registration_number: "BR-O6E-1111" ,color: "blue")
  assert_equal 'blue',car.color
end

 test "should compaire with car registration_number" do
  car = Car.create(registration_number: "BR-O6E-4532" ,color: "red")
  assert_equal 'BR-O6E-4532',car.registration_number
end

end
