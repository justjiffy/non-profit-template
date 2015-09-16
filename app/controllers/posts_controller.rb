class PostsController < ApplicationController
include AdminsHelper
before_filter :check_if_admin, :except => [:index, :show]

  def index
  @post = Post.all.sort_by(&:created_at)
  end

  def show
  @posts = Post.all.sort_by(&:created_at)
  @post = Post.find(params[:id])
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.create(post_params)
  	if @post.save
  		redirect_to :back
  	else redirect_to :root_path
  	end
  end

  def edit
  	@edit_post = Post.find(params[:id])
  end

  def update
  	@post = Post.find(params[:id])
  	if @post.update_attributes(post_params)
  		redirect_to admin_path
  	else
  		render :edit
  	end
  end

  def all
  	@posts = Post.all
  end

  def destroy
  	@post = Post.find(params[:id])
  	@post.destroy
  	redirect_to admin_path
  end
  
    private

    def post_params
      params.require(:post).permit(:user_id, :title, :body, :img, :tags)
    end


end
