class JobsController < ApplicationController
	def index
		@jobs = Job.all
		render :index
	end

	def new
		@job = Job.new
	end
	
	def create
		@job = Job.create(job_params)
		redirect_to jobs_path
	end

private

def job_params
	return params.require(:job).permit(:title, :description)
end
end
