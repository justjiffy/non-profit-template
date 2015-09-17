class WelcomeController < ApplicationController

	def index
		@events = Event.all
		@posts = Post.all.order("created_at DESC").take(3)
	end

end
