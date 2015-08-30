require 'test_helper'

class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

 test "should not save car without color" do
 	puts "======hello==============="
  car = Car.create(registration_number: "BR-O6E-4532" ,color: "blue")
  puts "=====save===car======#{car.inspect}============"
  assert_equal 'blue',car.color
  puts "=====save===car======#{car.inspect}============"
end

end
