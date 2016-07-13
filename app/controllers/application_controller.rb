class ApplicationController < ActionController::Base
  include AuthHelper
  before_action :set_local

  helper_method :current_user
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def set_local
    if params[:locale] && I18n.available_locales.include?(params[:locale].to_sym)
      I18n.locale = params[:locale]
      url = request.original_url.split("?locale")
      redirect_to url.first
    end
  end
end
