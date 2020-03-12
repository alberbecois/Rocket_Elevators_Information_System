require "application_system_test_case"

class ColumnsTest < ApplicationSystemTestCase
  setup do
    @column = columns(:one)
  end

  test "visiting the index" do
    visit columns_url
    assert_selector "h1", text: "Columns"
  end

  test "creating a Column" do
    visit columns_url
    click_on "New Column"

    fill_in "Battery", with: @column.battery_id
    fill_in "Column status", with: @column.column_status
    fill_in "Column type", with: @column.column_type
    fill_in "Floors", with: @column.floors
    fill_in "Information", with: @column.information
    fill_in "Notes", with: @column.notes
    click_on "Create Column"

    assert_text "Column was successfully created"
    click_on "Back"
  end

  test "updating a Column" do
    visit columns_url
    click_on "Edit", match: :first

    fill_in "Battery", with: @column.battery_id
    fill_in "Column status", with: @column.column_status
    fill_in "Column type", with: @column.column_type
    fill_in "Floors", with: @column.floors
    fill_in "Information", with: @column.information
    fill_in "Notes", with: @column.notes
    click_on "Update Column"

    assert_text "Column was successfully updated"
    click_on "Back"
  end

  test "destroying a Column" do
    visit columns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Column was successfully destroyed"
  end
end
