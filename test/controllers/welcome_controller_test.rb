require "test_helper"

class WelcomeControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_response :success
  end

  def test_set_local
    get :index, {:locale => 'ru'}
    assert { I18n.locale == :ru }
  end

  def test_set_loc_with_amp
    get :index, {locale: 'ru', dress: "tshort"}
    assert { I18n.locale == :ru }
  end

end
