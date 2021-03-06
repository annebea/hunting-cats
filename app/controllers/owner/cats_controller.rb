class Owner::CatsController < ApplicationController

  def index
    @cats = current_user.cats
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cats_params)
    @cat.user = current_user
    if @cat.save!
      redirect_to owner_cats_path
    else
      render "new"
    end
  end

  private

  def cats_params
    params.require(:cat).permit(:name, :description, :breed, :performance, :age, :price_per_day, :photo)
    # pas de status dans les cat_params car available par défaut
  end


end
