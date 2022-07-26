class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]

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

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end
  
  def edit
    @post = Post.find(params[:id])
    unless @post.user.id == current_user.id
      redirect_to action: :index
    end
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    if @post.update(post_params)
      redirect_to post_path(@post.id)
    else 
      render :edit
    end
  end

  def search
    @q = Post.ransack(params[:q])
    @posts = @q.result
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to "/"
  end


  private
  def post_params
    params.require(:post).permit(:detail, :size_id, :place_id, :image).merge(user_id: current_user.id)
  end
end
