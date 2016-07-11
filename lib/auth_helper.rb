module AuthHelper
  def auth_user(user)
    session[:user_id] = user.id
  end

  def login_manager
    if session[:user_id].nil? || !User.find(session[:user_id]).manager?
      flash[:danger] = "You don't have manager's permissions!!!"
      redirect_to root_path
    end
  end

  def current_user
    @_current_user ||= User.find_by(id: session[:user_id])
  end
end
