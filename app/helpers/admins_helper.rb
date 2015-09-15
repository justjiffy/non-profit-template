module AdminsHelper

def check_if_admin
  if current_user.admin === true
    render 'index'
  else
    redirect_to root_path
  end
end

end
