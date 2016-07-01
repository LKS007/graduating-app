require "test_helper"

class SessionsControllerTest < ActionController::TestCase
  setup do
    @attrs = attributes_for :user
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create_false
    post :create,
      session: {email: @attrs[:email], password: @attrs[:password] }
    assert_redirected_to login_path
  end

  def test_destroy
    delete :destroy
    assert_equal(session[:user_id], nil)
    assert_redirected_to root_path
  end

  def test_create_true
    @user = create :user
    post :create,
      session: {email: @user.email, password: @user.password }
      assert_equal(session[:user_id], @user.id)
      assert_redirected_to root_path
    # post :create, controller: 'users'
  end

end
