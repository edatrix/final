require 'test_helper'

class UserTest < Capybara::Rails::TestCase

  test "user can see index page" do
    visit root_path
    assert_content page, "hello"
  end

  # def test_user_can_log_in
    # skip
  #   get "/login"
  #   assert_equal 200, response
  # end

end
