class PostsController < ApplicationController
  before_action :get_post, only: %i[show]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'post was created' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end


  private
  def get_post
    @post = Post.find(params[:id])
  end
  def post_params
    params.require(:post).permit(:title, :body)
  end

end
