require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  setup do
    @user = create :user
  end
  def test_sanity
    assert_emails 1 do
      email = UserMailer.welcome_email(@user).deliver_now
    end
  end
end
