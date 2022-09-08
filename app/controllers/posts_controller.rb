class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to root_path
    else
      @posts = Post.all
      render :index
    end
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      @posts = Post.all
      render :index
    end
  end

  def delete
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
