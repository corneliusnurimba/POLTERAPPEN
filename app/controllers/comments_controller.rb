
class CommentsController < ApplicationController

  def create
    @polterabend = Polterabend.find(params[:polterabend_id])
    @comment = Comment.new(comment_params)
    @comment.polterabend = @polterabend
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
