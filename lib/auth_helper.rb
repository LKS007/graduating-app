module AuthHelper
  def auth_user(user)
    session[:user_id] = user.id
  end

  def login_manager
    redirect_to root_path if session[:user_id].nil? || !User.find(session[:user_id]).manager?
  end

  def current_user
    @_current_user ||= User.find_by(id: session[:user_id])
  end
end
