class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def create
    @booking = Booking.new(booking_params)
    @cat = Cat.find(params[:cat_id])
    @booking.user = current_user
    @booking.cat = @cat
    @booking.total_price = (@booking.ending_date - @booking.starting_date)* @cat.price_per_day
    @booking.status = 'pending'
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date,:ending_date,:status)
  end

end
