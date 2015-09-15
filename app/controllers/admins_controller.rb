class AdminsController < ApplicationController
	include AdminsHelper
	before_filter :check_if_admin

 def index
 end

def new
 	# @post = Post.new
 	render 'posts/newpost'
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
