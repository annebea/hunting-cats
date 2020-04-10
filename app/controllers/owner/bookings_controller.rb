class Owner::BookingsController < ApplicationController

  def index
    @bookings = current_user.owner_bookings
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save!

    redirect_to owner_bookings_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "rejected"
    @booking.save!



    redirect_to owner_bookings_path
  end

end
