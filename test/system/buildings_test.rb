require "application_system_test_case"

class BuildingsTest < ApplicationSystemTestCase
  setup do
    @building = buildings(:one)
  end

  test "visiting the index" do
    visit buildings_url
    assert_selector "h1", text: "Buildings"
  end

  test "creating a Building" do
    visit buildings_url
    click_on "New Building"

    fill_in "Address", with: @building.address_id
    fill_in "Admin email", with: @building.admin_email
    fill_in "Admin full name", with: @building.admin_full_name
    fill_in "Admin phone", with: @building.admin_phone
    fill_in "Customer", with: @building.customer_id
    fill_in "Tech email", with: @building.tech_email
    fill_in "Tech full name", with: @building.tech_full_name
    fill_in "Tech phone", with: @building.tech_phone
    click_on "Create Building"

    assert_text "Building was successfully created"
    click_on "Back"
  end

  test "updating a Building" do
    visit buildings_url
    click_on "Edit", match: :first

    fill_in "Address", with: @building.address_id
    fill_in "Admin email", with: @building.admin_email
    fill_in "Admin full name", with: @building.admin_full_name
    fill_in "Admin phone", with: @building.admin_phone
    fill_in "Customer", with: @building.customer_id
    fill_in "Tech email", with: @building.tech_email
    fill_in "Tech full name", with: @building.tech_full_name
    fill_in "Tech phone", with: @building.tech_phone
    click_on "Update Building"

    assert_text "Building was successfully updated"
    click_on "Back"
  end

  test "destroying a Building" do
    visit buildings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Building was successfully destroyed"
  end
end
