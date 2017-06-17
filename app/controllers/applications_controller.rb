class ApplicationsController < ApplicationController
  def index
    @job = Job.find(params[:job_id])
  end

  def show
    #code
  end

  def new
    @job = Job.find(params[:job_id])
  end
  def create
    @job = Job.find(params[:job_id])
    @application = @job.applications.create((params[:application]).permit(:name, :surname, :email, :phone))

    if @application.save
      redirect_to job_path(@job)
    else
      render 'new'
    end
    #code
  end
end
