class PostsController < ApplicationController

def check_if_admin
  if current_user.admin === true
    render :post
  else
    redirect_to root_path
  end
end

before_filter :check_if_admin

def new
 	@post = Post.new
 	render :post
end

 def create
	before_filter :check_if_admin
  	@post = Post.create(post_params)
  	if @post.save
  		redirect_to :back
  	else redirect_to :post
  	end
 end

 private
 def post_params
	params.require(:post).permit(:user_id, :title, :body, :img, :tags)
 end


end
