class CommentsController < ApplicationController
  def create
    @space = Space.find(params[:space_id])

    @comment = @space.comments.build(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to space_path(@space)

  end

  private
  def comment_params
    params.require(:comment).permit(:commenter)
  end
end
