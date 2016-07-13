class Admin::WelcomeController < Admin::ApplicationController
  def index
    @tasks = Task.all.page(params[:page]).per(5)
  end
end
