class ParkingSlotController < ApplicationController
  def index
  end

   def new
    @slot = ParkingSlot.new
  end

  def create
  	@slot = ParkingSlot.new(slot_params)
  	if @slot.save
      flash[:notice] = "Successfully allocate your parking slot."
      render "index"
    else
      render "new"
    end
  end

 private
      
 def slot_params
   params.require(:slot).permit(:slot_number, :status)
 end
end
