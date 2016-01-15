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
    puts '********'
    puts params[:user]
    puts user_params
  	@user = User.new(user_params)
    if @user.save
      session[:user_id]
      flash[:notice] = "Your account was successfully made!"
      redirect_to user_path @user
    else
      flash[:alert] = "Problem creating your account"
      redirect_to root_path
    end 
  end

  def destroy
      @user = User.find(params[:id])
      @user.destroy
      session[:user_id]
      redirect_to root_path
    end

  private

  def user_params
  	params.require(:user).permit(:user_name, :password)
  end
end
