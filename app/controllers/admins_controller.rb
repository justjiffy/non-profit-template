class AdminsController < ApplicationController
	include AdminsHelper
	before_filter :check_if_admin

 def index
 end

 def new
 end

 def show
	@posts = Post.all
 end

 def events
 	@events = Event.all
 end

 def create
 end

 private
 def post_params
	params.require(:post).permit(:user_id, :title, :body, :img, :tags)
 end

end
