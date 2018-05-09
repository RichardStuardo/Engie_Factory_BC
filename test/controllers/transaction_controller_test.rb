require 'test_helper'

class TransactionControllerTest < ActionDispatch::IntegrationTest
  test "should get user_registered" do
    get transaction_user_registered_url
    assert_response :success
  end

  test "should get sale" do
    get transaction_sale_url
    assert_response :success
  end

  test "should get buy" do
    get transaction_buy_url
    assert_response :success
  end

  test "should get comunity" do
    get transaction_comunity_url
    assert_response :success
  end

  test "should get controller" do
    get transaction_controller_url
    assert_response :success
  end

end
