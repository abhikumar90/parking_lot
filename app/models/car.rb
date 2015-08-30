class Car < ActiveRecord::Base
	has_many :tickets
	belongs_to :paring_slot
end
