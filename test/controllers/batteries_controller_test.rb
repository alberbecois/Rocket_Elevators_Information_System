require 'test_helper'

class BatteriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @battery = batteries(:one)
  end

  test "should get index" do
    get batteries_url
    assert_response :success
  end

  test "should get new" do
    get new_battery_url
    assert_response :success
  end

  test "should create battery" do
    assert_difference('Battery.count') do
      post batteries_url, params: { battery: { battery_type: @battery.battery_type, building_id: @battery.building_id, commissioning_date: @battery.commissioning_date, employee_id: @battery.employee_id, information: @battery.information, last_inspection_date: @battery.last_inspection_date, notes: @battery.notes, operation_certificate: @battery.operation_certificate, status: @battery.status } }
    end

    assert_redirected_to battery_url(Battery.last)
  end

  test "should show battery" do
    get battery_url(@battery)
    assert_response :success
  end

  test "should get edit" do
    get edit_battery_url(@battery)
    assert_response :success
  end

  test "should update battery" do
    patch battery_url(@battery), params: { battery: { battery_type: @battery.battery_type, building_id: @battery.building_id, commissioning_date: @battery.commissioning_date, employee_id: @battery.employee_id, information: @battery.information, last_inspection_date: @battery.last_inspection_date, notes: @battery.notes, operation_certificate: @battery.operation_certificate, status: @battery.status } }
    assert_redirected_to battery_url(@battery)
  end

  test "should destroy battery" do
    assert_difference('Battery.count', -1) do
      delete battery_url(@battery)
    end

    assert_redirected_to batteries_url
  end
end
