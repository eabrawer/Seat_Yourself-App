class RestaurantsController < ApplicationController
  # before_filter :ensure_logged_in, :only => [:show]

  def index
  	@restaurants = Restaurant.all 
  end

  def show
  	@restaurant = Restaurant.find(params[:id])

    if current_user
      @reservation = @restaurant.reservations.build
    end
  end

  def new
  	@restaurant = Restaurant.new
  end

  def create 
  	@restaurant = Restaurant.new(parameters)
  	if @restaurant.save 

  		redirect_to @restaurant
  	else
  		render "new"
  	end
  end

  def edit
  	@restaurant = Restaurant.find(params[:id])
  end

  def update
  	@restaurant = Restaurant.find(params[:id])
  	if @restaurant.update_attributes(parameters)
  		redirect_to restaurant_path
  	else
  		render "edit"
  	end
  end

  def destroy
  	@restaurant = Restaurant.find(params[:id])
  	if @restaurant.destroy
  		redirect_to restaurants_url
 	end
  end

  def parameters
  	params.require(:restaurant).permit( :name, :address, :region, 
  	:price, :description, :capacity, :timeopen, :timeclose)
  end

end
