class Admin::ApplicationController < ApplicationController
  before_action :login_manager

  private
  
  def login_manager
    redirect_to root_path if session[:user_id].nil? || !User.find(session[:user_id]).manager?
  end
end
