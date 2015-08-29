class ParkingSlot < ActiveRecord::Base
	has_many :tickets
end
