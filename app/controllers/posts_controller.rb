class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]
  before_action :find_post, only: %i[show]

  def index
    @posts = Post.all
  end

  def show; end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: 'post was created' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
