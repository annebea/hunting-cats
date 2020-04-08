class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @cat = Cat.find(params[:cat_id])
    @cat = Cat.find(params[:cat_id])
    @booking.user = current_user
    @booking.cat = @cat
    # @booking.total_price = (ending_date - starting_date)
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date,:ending_date)
  end

end
