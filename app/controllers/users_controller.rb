class UsersController < ApplicationController
def index
 end

 def new
 	@user = User.new
 end

 def create	
  	@user = User.create(user_params)
  	if @user.save
  		redirect_to root_path
  	else redirect_to 'http://google.com'
  	end
 end

 private
 def user_params
	params.require(:user).permit(:email, :name, :admin, :member, :donor, :volunteer, :password, :password_confirmation)
 end

end
