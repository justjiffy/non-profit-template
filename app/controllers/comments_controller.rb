class CommentsController < ApplicationController
	include AdminsHelper
	before_filter :check_if_user

	def index
	end

	def create
	  @comment = Comment.create(comment_params)
  		if @comment.save
  		redirect_to :back
  		else redirect_to full_path
  		end
	end

	private
		def comment_params
			params.require(:comment).permit(:user_id, :post_id, :body)
		end
end
