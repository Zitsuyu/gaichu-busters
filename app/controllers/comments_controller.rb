class CommentsController < ApplicationController

  def create
    @comment = Comment.new(post_params)
    if @comment.save
      redirect_to post_path(@comment.post)
    else
      @post = @comment.post
      @comments = @post.comments.includes(:user)
      render "posts/show"
    end
  end

  private
  def post_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
