class PostsController < ApplicationController

  before_action :get_posts, only: [:show]

  def index
    @posts = Post.all
  end

  def show
    
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    # @post.avatar = Rails.root.join("db/images/001.jpg").open
    # @post.save!
    # byebug
    
    redirect_to @post
  end

  private

  def get_posts
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end


  # uploader = AvatarUploader.new

  # uploader.store!(my_file)

  # uploader.retrieve_from_store!('my_file.png')

end