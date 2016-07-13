class Admin::WelcomeController < Admin::ApplicationController
  def index
    @tasks = Task.all
  end
end
