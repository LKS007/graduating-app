require "test_helper"

class UserTest < ActiveSupport::TestCase
  def user
    @user ||= User.new(user_profile)
  end

  def test_valid
    assert user.valid?
  end

  private
    def user_profile
      {first_name: "John", last_name: "Smith", email: "wait@for.it", password: "123qwe"}
    end


end
