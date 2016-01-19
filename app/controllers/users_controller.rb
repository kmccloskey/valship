class UsersController < ApplicationController
  def index
  	@users = User.all 
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
    @jobs = @user.jobs
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
    if @user.save
      session[:user_id]
      redirect_to user_path @user
      flash[:notice] = "Your account was successfully made!"
    else
      redirect_to root_path
      flash[:alert] = "Problem creating your account"
    end 
  end

  def destroy
      @user = User.find(params[:id])
      @user.destroy
      session[:user_id]
      redirect_to root_path
  end

  def follow_boat
    @user = user.find(params[:boat_id])
  end

  private

  def user_params
  	params.require(:user).permit(:user_name, :password)
  end
end
