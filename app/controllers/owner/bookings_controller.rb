class Owner::BookingsController < ApplicationController

  def index
    @bookings = current_user.owner_bookings
  end

  def accept

  end

  def reject

  end

end
