class ParkingSlot < ActiveRecord::Base
	has_many :tickets
	has_many :cars
end
