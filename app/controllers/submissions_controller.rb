class SubmissionsController < ApplicationController
  def index
    @submissions = Submission.all
  end

  def show
    @submission = Submission.find(params[:id])
  end

  def new
    puts "PARAMS CLASS #{params.class}"
    @submission = Submission.new
  end

  def create
    @submission = Submission.new submission_params
    if @submission.save
      redirect_to submissions_path
    else
      render 'new'
    end
  end

  def edit
    @submission = Submission.find(params[:id])
  end

  def update
    @submission = Submission.find params[:id]
    if @submission.update(submission_params)
      redirect_to @submission
    else
      render 'edit'
    end
  end

  private
  def submission_params
    params.require(:submission).permit(:title, :url)
  end
end
