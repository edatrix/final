require 'test_helper'

class UserTest < Capybara::Rails::TestCase

  def test_user_can_delete_lost_pet
    p = Pet.create(species_cd: 1, status_cd: 0, name: "fido", description: "big fat dog", zip: 37281)
    p.save

    visit lost_pets_path
    click_on "I found my pet!"

    assert_content page, "Welcome"
  end

end
