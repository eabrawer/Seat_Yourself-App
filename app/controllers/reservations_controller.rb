class ReservationsController < ApplicationController

  def show
  	@reservation = Reservation.find(params[:id])
  end

  def new
  end

  def create
  	@reservation = @restaurant.reservation.build(params[:reservation])
    @reservation.user_id = current_user.id
    if @reservation.save
      redirect_to restaurants_url, notice: 'Reservation created successfully'
    else
      flash[:alert] = "Sorry but there is no availability, please adjust your reservation time."
      render "show"
    end
  end

  def edit
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
  end

  private

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
