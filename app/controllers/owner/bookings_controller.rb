class Owner::BookingsController < ApplicationController

  def index
    @bookings = current_user.owner_bookings
  end

  def accept!
    @booking.status = 'accepted'
  end

  def reject!
    @booking.status = 'rejected'
  end

end
