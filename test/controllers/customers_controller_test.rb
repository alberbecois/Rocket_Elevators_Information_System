require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { business: @customer.business, business_description: @customer.business_description, contact_email: @customer.contact_email, contact_full_name: @customer.contact_full_name, contact_phone: @customer.contact_phone, headquarter_address: @customer.headquarter_address, tech_email: @customer.tech_email, tech_full_name: @customer.tech_full_name, tech_phone: @customer.tech_phone, user_id: @customer.user_id } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { business: @customer.business, business_description: @customer.business_description, contact_email: @customer.contact_email, contact_full_name: @customer.contact_full_name, contact_phone: @customer.contact_phone, headquarter_address: @customer.headquarter_address, tech_email: @customer.tech_email, tech_full_name: @customer.tech_full_name, tech_phone: @customer.tech_phone, user_id: @customer.user_id } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end
