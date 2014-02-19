require 'test_helper'

class PetsControllerTest < ActionController::TestCase

  def test_it_shows_found_pets
    get :found

    assert_response :success
  end

end
