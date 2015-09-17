module AdminsHelper

def check_if_admin
  if current_user.admin === true
  else
    redirect_to root_path
  end
end

def check_if_user
	if current_user
	else
	  redirect_to '/register'
	end
end

end

