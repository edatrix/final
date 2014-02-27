require 'test_helper'

class UserTest < Capybara::Rails::TestCase

  def test_user_can_see_listings_on_found_page
    visit found_pets_path
    assert_content page, "Do I belong to you?"
  end

  def test_user_can_see_listings_on_lost_page
    visit lost_pets_path
    assert_content page, "Have you seen me?"
  end

end
