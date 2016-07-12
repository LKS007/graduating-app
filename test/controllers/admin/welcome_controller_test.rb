require "test_helper"

class Admin::WelcomeControllerTest < ActionController::TestCase
  def test_admin_index_true
    @user = create :user, role: :manager
    auth_user(@user)
    get :index
    assert_response :success
  end
end
