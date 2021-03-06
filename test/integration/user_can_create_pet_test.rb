require 'test_helper'

class UserTest < Capybara::Rails::TestCase

  def test_user_can_visit_index
    visit root_path
    assert_content page, "Enter information"
  end

  def test_user_can_create_lost
    visit root_path

    select "Cat", :from => "pet_species_cd"
    select "Lost", :from => "pet_status_cd"
    fill_in "pet_name", with: "Beatrix"
    fill_in "pet_description", with: "Long haired calico cat last seen lurking around building 19"
    fill_in "pet_zip", with: 80027

    click_on "Submit info"

    assert_content page, "Do I belong to you?"
  end

    def test_user_can_create_found
    visit root_path

    select "Dog", :from => "pet_species_cd"
    select "Found", :from => "pet_status_cd"
    fill_in "pet_name", with: "Sparkles"
    fill_in "pet_description", with: "Little yapper dog."
    fill_in "pet_zip", with: 80027

    click_on "Submit info"

    assert_content page, "Do I belong to you?"
  end

end
