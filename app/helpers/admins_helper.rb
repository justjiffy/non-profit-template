module AdminsHelper

def check_if_admin
  if current_user.admin === true
    render 'index'
  else
    # or you can use the authenticate_user! devise provides to only allow signed_in users
    redirect_to root_path
  end
end

end
