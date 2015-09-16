class WelcomeController < ApplicationController

	def index
		@users = User.all
		@posts = Post.all.order("created_at DESC").take(3)
	end

end
