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
  	@car = Car.new(car_params)
  	if @car.save
      flash[:notice] = "You have successfully booked ticket."
      #redirect_to cars_path(@car)
      redirect_to "/cars/#{@car.id}/parking_slot/new"
    else
      render "new"
    end
  end

 private
      
 def car_params
   params.require(:car).permit(:registration_number, :color)
 end

end
