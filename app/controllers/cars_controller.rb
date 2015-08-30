class CarsController < ApplicationController
  def index
  	#@car = Car.all
  end
 
 def show
 end

  def new
    @car = Car.new
  end

  def create
  	@car = Car.create(car_params)

    @parking_slot = ParkingSlot.where(occupied: false).first
    @parking_slot.car_id = @car.id
    @parking_slot.occupied = true
    @parking_slot.save

    @ticket = Ticket.create(car_id: @car.id, parking_slot_id: @parking_slot.id)

    flash[:notice] = "Your ticket no: #{@ticket.ticket_no}. Please save it for use during exit."
    #redirect_to cars_path(@car)
    redirect_to :back
  end

  def exit_parking
    ticket_no = params[:ticket_no]
    @ticket = Ticket.find_by_ticket_no(ticket_no)

    @ticket.car.destroy
    @ticket.parking_slot.update_attributes(car_id: nil, occupied: false)

    flash[:notice] = "Thank you for exiting."
    #redirect_to cars_path(@car)
    redirect_to cars_path
  end

  def reg_no_with_color
    @cars = Car.where("UPPER(color) = UPPER(?)",params[:color])
    render :template => "/cars/registration_number"
  end

  def slot_no_parking_car
      @parking_slot = ParkingSlot.where("id = ? and occupied = ?", params[:parking_slot_no], true).first
      @cars = Car.find_by_id(@parking_slot.car_id)
    render :template => "/cars/slot_no_parking_car_list"
  end  

  def slot_no_car_color
    @tickets = Ticket.where(parking_slot_id: params[:parking_slot_no])
    render :template => "/cars/slot_no_car_color_list"
  end

 private
      
 def car_params
   params.require(:car).permit(:registration_number, :color)
 end

end
