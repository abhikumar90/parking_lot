class Ticket < ActiveRecord::Base
	belongs_to :car
	belongs_to :parking_slot
end
