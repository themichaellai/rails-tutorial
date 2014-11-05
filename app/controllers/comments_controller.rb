class CommentsController < ApplicationController
  def create
    @submission = Submission.find(params[:submission_id])
    @comment = @submission.comments.build(comments_params)
    if @comment.save
      redirect_to submission_path params[:submission_id]
    end
  end

  private
  def comments_params
    params.require(:comment).permit(:text)
  end
end
