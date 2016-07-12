require "test_helper"

class UsersControllerTest < ActionController::TestCase
  setup do
    @attrs = attributes_for :user
  end
  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('User.count') do
      post :create, user: @attrs
    end
    assert_redirected_to root_path
  end

  def test_false_create
    assert_no_difference('User.count') do
      post :create, user: {first_name: "False"}
    end
    assert_redirected_to '/signup'
  end
end
