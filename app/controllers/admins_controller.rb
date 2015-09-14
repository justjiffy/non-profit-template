class AdminsController < ApplicationController
	include AdminsHelper
	before_filter :check_if_admin

	def index
	end

end
