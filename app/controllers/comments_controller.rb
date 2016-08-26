class CommentsController < ApplicationController

  def create
    @comment = Comment.find(params[:comment_id])
    @comment = Comment.new(comment_params)
    @commet.polterabend = @polterabend
    if @comment.save
      redirect_to polterabend_path(@polterabend)
    else
      render 'polterabend/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
