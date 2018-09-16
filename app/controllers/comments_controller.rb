class CommentsController < ApplicationController
  def create
    @bar = Bar.find(params[:bar_id])
    comment = @bar.comments.create(comment_params)
    if comment.save
      redirect_to bar_path(@bar), notice: "Comment added"
    else
      redirect_to bar_path(@bar), alert: "Something went wrong"
    end
  end
  private

  def comment_params
    params.require(:comment).permit(:body)
  end
  end
