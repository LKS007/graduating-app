require "test_helper"

class TaskTest < ActiveSupport::TestCase
  setup do
    @user = create :user
  end
  
  def task
    @task ||= Task.new
  end

  def test_valid
    task.current_user_id = 5
    assert task.valid?
  end

  def test_save
    task.current_user_id = @user.id
    assert task.save
  end
end
