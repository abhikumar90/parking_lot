class Ticket < ActiveRecord::Base
	belongs_to :car
	belongs_to :parking_slot

	before_create :assign_ticket_no


	def assign_ticket_no
		self.ticket_no = SecureRandom.hex(2)
	end
end
