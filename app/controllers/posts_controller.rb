class PostsController < ApplicationController
include PostsHelper
before_filter :check_if_admin, :except => [:index, :show]

def index
end

def show
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

 private
 def post_params
	params.require(:post).permit(:user_id, :title, :body, :img, :tags)
 end


end
