class Owner::CatsController < ApplicationController

  def index
    @cats = current_user.cats
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      redirect_to owner_cats_path
    else
      render "new"
    end
  end

  private

  def booking_params
    params.require(:cat).permit(:name, :description, :breed, :age,:price_per_day, :status)
  end

end
