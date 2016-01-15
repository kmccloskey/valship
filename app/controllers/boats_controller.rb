class BoatsController < ApplicationController
  def new
  	@boat = Boat.new
  end

  def index
  	@boat = Boat.all
  end

  def create
  	puts "*********"
  	@boat = Boat.new(boat_params)
  	if @boat.save 
  		redirect_to boat_path @boat
  		flash[:notice] = "Boat created"
  	else
  		redirect_to new_boat_path
  		flash[:notice] = "Could not create boat"
  	end
  end

  def edit
  	@boat = Boat.find(params[:id])
  end

  def show
  	@boat = Boat.find(params[:id])
  end

  def destroy
  	
  end

  private

  def boat_params
  	params.require(:boat).permit(:name, :current_l)
  end
end
