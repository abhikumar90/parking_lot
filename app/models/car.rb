class Car < ActiveRecord::Base
	has_many :tickets
	belongs_to :paring_slot


  def self.read_input_file(file_path)
     File.open(file_path, "r").each_line do |line|
        command = line.split(/\s/)[0]
        args = line.split(/\s/) - [line.split(/\s/)[0]]
        Car.send(command, *args)
     end
   end

  def self.create_parking_lot(num)
     num = num.to_i
     num.times do
        ParkingSlot.create(occupied: false)
     end
    puts "Created parking slot with capacity #{num}"
  end

  def self.park(reg_no, color)
    @car = Car.create(registration_number: reg_no, color: color)
    @parking_slot = ParkingSlot.where(occupied: false).first
    @parking_slot.car_id = @car.id
    @parking_slot.occupied = true
    @parking_slot.save

    puts "Allocated slot number: #{@parking_slot.id}"
  end

  def self.leave(slot_no)
  	@parking_slot = ParkingSlot.where(id: slot_no).first
    @parking_slot.car_id = nil
    @parking_slot.occupied = false
    @parking_slot.save
   puts "Slot number #{@parking_slot.id} is free"  
  end

 def self.status
   @parking_slot = ParkingSlot.where(occupied: true)
   @parking_slot.each do |park|
   	 @car = Car.where(id: park.car_id)
   	  @car.each do |car|
   	  	park.id
   	  	car.registration_number
   	  	car.color
   	puts "Slot No #{park.id}"
   	puts "Registration No #{car.registration_number}"
   	puts "Color #{car.color}"
   	  end
   	end
   	
 end

def self.registration_numbers_for_cars_with_colour(color)
  @cars = Car.where("UPPER(color) = UPPER(?)",color)
   @cars.each do |car|
   	 car.registration_number
    	puts "Registration No #{car.registration_number}"
    end
end

def self.slot_numbers_for_cars_with_colour(color)
 @parking_slot = ParkingSlot.where(occupied: true)
   @parking_slot.each do |park|
   	 @car=Car.where("id = ? and UPPER(color) = UPPER(?)", park.car_id,color)
   	  @car.each do |car|
   	  	park.id
   	    puts "Slot No #{park.id}"
   	  end
   	end
end

def self.slot_number_for_registration_number(reg_no)
  @parking_slot = ParkingSlot.where(occupied: true)
   @parking_slot.each do |park|
   	 @car=Car.where("id = ? and UPPER(registration_number) = UPPER(?)", park.car_id,reg_no)
   	  @car.each do |car|
   	  	park.id
   	    puts "Slot No #{park.id}"
   	  end
   	end
end


end
