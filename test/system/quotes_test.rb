require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  setup do
    @quote = quotes(:one)
  end

  test "visiting the index" do
    visit quotes_url
    assert_selector "h1", text: "Quotes"
  end

  test "creating a Quote" do
    visit quotes_url
    click_on "New Quote"

    fill_in "Build type", with: @quote.build_type
    fill_in "Business", with: @quote.business
    fill_in "Elevator units", with: @quote.elevator_units
    fill_in "Email", with: @quote.email
    fill_in "Fullname", with: @quote.fullname
    fill_in "Installation fe", with: @quote.installation_fe
    fill_in "Nb appartment", with: @quote.nb_appartment
    fill_in "Nb base", with: @quote.nb_base
    fill_in "Nb cages", with: @quote.nb_cages
    fill_in "Nb floors", with: @quote.nb_floors
    fill_in "Nb occupants", with: @quote.nb_occupants
    fill_in "P line selection", with: @quote.p_line_selection
    fill_in "Product line", with: @quote.product_line
    fill_in "Sum total", with: @quote.sum_total
    click_on "Create Quote"

    assert_text "Quote was successfully created"
    click_on "Back"
  end

  test "updating a Quote" do
    visit quotes_url
    click_on "Edit", match: :first

    fill_in "Build type", with: @quote.build_type
    fill_in "Business", with: @quote.business
    fill_in "Elevator units", with: @quote.elevator_units
    fill_in "Email", with: @quote.email
    fill_in "Fullname", with: @quote.fullname
    fill_in "Installation fe", with: @quote.installation_fe
    fill_in "Nb appartment", with: @quote.nb_appartment
    fill_in "Nb base", with: @quote.nb_base
    fill_in "Nb cages", with: @quote.nb_cages
    fill_in "Nb floors", with: @quote.nb_floors
    fill_in "Nb occupants", with: @quote.nb_occupants
    fill_in "P line selection", with: @quote.p_line_selection
    fill_in "Product line", with: @quote.product_line
    fill_in "Sum total", with: @quote.sum_total
    click_on "Update Quote"

    assert_text "Quote was successfully updated"
    click_on "Back"
  end

  test "destroying a Quote" do
    visit quotes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quote was successfully destroyed"
  end
end
