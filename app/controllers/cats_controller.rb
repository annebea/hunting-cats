class CatsController < ApplicationController

  def index
    @cats = Cat.geocoded # returns cats with coordinates

    @markers = @cats.map do |cat|
      {
        lat: cat.latitude,
        lng: cat.longitude
      }
    end
  end

  def show
    @cat = Cat.find(params[:id])
    @booking = Booking.new
  end

end
