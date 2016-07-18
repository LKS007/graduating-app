class Admin::TasksController < Admin::ApplicationController
  def index
  end

  def new
    @users = User.where(role: "worker")
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to '/admin'
    else
      redirect_to new_admin_task_path
    end
  end

  private
    def task_params
      params.require(:task).permit(:title, :description, :current_user_id)
    end
end
