require 'test_helper'

class BuildingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @building = buildings(:one)
  end

  test "should get index" do
    get buildings_url
    assert_response :success
  end

  test "should get new" do
    get new_building_url
    assert_response :success
  end

  test "should create building" do
    assert_difference('Building.count') do
      post buildings_url, params: { building: { address_id: @building.address_id, admin_email: @building.admin_email, admin_full_name: @building.admin_full_name, admin_phone: @building.admin_phone, customer_id: @building.customer_id, tech_email: @building.tech_email, tech_full_name: @building.tech_full_name, tech_phone: @building.tech_phone } }
    end

    assert_redirected_to building_url(Building.last)
  end

  test "should show building" do
    get building_url(@building)
    assert_response :success
  end

  test "should get edit" do
    get edit_building_url(@building)
    assert_response :success
  end

  test "should update building" do
    patch building_url(@building), params: { building: { address_id: @building.address_id, admin_email: @building.admin_email, admin_full_name: @building.admin_full_name, admin_phone: @building.admin_phone, customer_id: @building.customer_id, tech_email: @building.tech_email, tech_full_name: @building.tech_full_name, tech_phone: @building.tech_phone } }
    assert_redirected_to building_url(@building)
  end

  test "should destroy building" do
    assert_difference('Building.count', -1) do
      delete building_url(@building)
    end

    assert_redirected_to buildings_url
  end
end
