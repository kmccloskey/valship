class JobsController < ApplicationController
  def new
  	@job = Job.new
  end

  def show
  	@job = Job.find(params[:id])
  end

  def create
  	puts "********"
  	@job = Job.new(job_params)
  	if @job.save 
  		redirect_to job_path @job
  		flash[:notice] = "Job created"
  	else
  		redirect_to new_job_path
  		flash[:notice] = "Job not created"
  	end
  end

  def edit
  	@job = Job.find(params[:id])
  end

  def index
  	@job = Job.all
  end

  private

  def job_params
  	params.require(:job).permit(:containers,:cargo,:origin,:job_name,:cost,:destination,:job_description,:user_id,:boat_id)
  end
end
