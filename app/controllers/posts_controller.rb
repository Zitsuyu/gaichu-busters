class PostsController < ApplicationController
  def index
    @post = Post.all
  end
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to "/"
    else
      render :new
    end
  end


  private
  def post_params
    params.require(:post).permit(:detail, :size_id, :place_id, :image).merge(user_id: current_user.id)
  end
end
