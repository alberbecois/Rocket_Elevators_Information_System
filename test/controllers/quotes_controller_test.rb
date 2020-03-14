require 'test_helper'

class QuotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quote = quotes(:one)
  end

  test "should get index" do
    get quotes_url
    assert_response :success
  end

  test "should get new" do
    get new_quote_url
    assert_response :success
  end

  test "should create quote" do
    assert_difference('Quote.count') do
      post quotes_url, params: { quote: { build_type: @quote.build_type, business: @quote.business, elevator_units: @quote.elevator_units, email: @quote.email, fullname: @quote.fullname, installation_fe: @quote.installation_fe, nb_appartment: @quote.nb_appartment, nb_base: @quote.nb_base, nb_cages: @quote.nb_cages, nb_floors: @quote.nb_floors, nb_occupants: @quote.nb_occupants, p_line_selection: @quote.p_line_selection, product_line: @quote.product_line, sum_total: @quote.sum_total } }
    end

    assert_redirected_to quote_url(Quote.last)
  end

  test "should show quote" do
    get quote_url(@quote)
    assert_response :success
  end

  test "should get edit" do
    get edit_quote_url(@quote)
    assert_response :success
  end

  test "should update quote" do
    patch quote_url(@quote), params: { quote: { build_type: @quote.build_type, business: @quote.business, elevator_units: @quote.elevator_units, email: @quote.email, fullname: @quote.fullname, installation_fe: @quote.installation_fe, nb_appartment: @quote.nb_appartment, nb_base: @quote.nb_base, nb_cages: @quote.nb_cages, nb_floors: @quote.nb_floors, nb_occupants: @quote.nb_occupants, p_line_selection: @quote.p_line_selection, product_line: @quote.product_line, sum_total: @quote.sum_total } }
    assert_redirected_to quote_url(@quote)
  end

  test "should destroy quote" do
    assert_difference('Quote.count', -1) do
      delete quote_url(@quote)
    end

    assert_redirected_to quotes_url
  end
end
