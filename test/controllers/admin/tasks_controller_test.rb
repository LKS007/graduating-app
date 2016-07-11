require "test_helper"

class Admin::TasksControllerTest < ActionController::TestCase
  setup do
    #@attrs = attributes_for :user
  end
  def test_admin_index
    get :index
    assert_redirected_to root_path    
  end

  def test_admin_index_true
    @user = create :user, role: :manager
    auth_user(@user)
    get :index
    assert_response :success
  end
  
end
