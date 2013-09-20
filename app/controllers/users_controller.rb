class UsersController < ApplicationController

  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create 
  	@user = User.new(parameters)
  	if @user.save 
  		redirect_to @user, :notice => "Signed up!"
  	else
  		render "new"
  	end
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update_attributes(parameters)
  		redirect_to restaurant_path
  	else
  		render "edit"
  	end
  end

  def destroy
  	@user = User.find(params[:id])
  	if @user.destroy
  		redirect_to users_url
 	end
  end

  def parameters
  	params.require(:user).permit( :first_name, :last_name, :email, 
  		:password_digest, :phone_number)
  end

end
