class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show]

  def index
      @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
      @restaurant = Restaurant.new(restaurant_params)
      @restaurant.save!
      if @review.save
        redirect_to restaurant_path(@restaurant)
      else
        render :new, status: :unprocessable_entity
      end
  end

  def show
    # @restaurant = Restaurant.find(params[:id])
  end


  private

  def restaurant_params
      params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
