class PostsController < ApplicationController

before_filter :authorize, :except => [:index, :show]

def index
end

# def check_if_admin
#   if current_user.admin === true
#     render :newpost
#   else
#     redirect_to root_path
#   end
# end

# before_filter :check_if_admin

def new
 	@post = Post.new
 	before_filter :check_if_admin
 	render 'admins/post'
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
