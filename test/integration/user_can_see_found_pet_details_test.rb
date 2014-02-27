require 'test_helper'

class UserTest < Capybara::Rails::TestCase

  def test_user_can_see_found_pet_details
    p = Pet.create(name: "fido", description: "black dog", zip: "80282", species_cd: "1", status_cd: "1")

    visit found_pets_path

    click_on "read more"

    assert_content page, p.name
    assert_content page, p.description
    assert_content page, p.zip
  end

end
