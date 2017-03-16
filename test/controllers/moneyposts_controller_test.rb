require 'test_helper'

class MoneypostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @moneypost = moneyposts(:one)
  end

  test "should get index" do
    get moneyposts_url
    assert_response :success
  end

  test "should get new" do
    get new_moneypost_url
    assert_response :success
  end

  test "should create moneypost" do
    assert_difference('Moneypost.count') do
      post moneyposts_url, params: { moneypost: { address: @moneypost.address, description: @moneypost.description, image_url: @moneypost.image_url, price: @moneypost.price, type: @moneypost.type } }
    end

    assert_redirected_to moneypost_url(Moneypost.last)
  end

  test "should show moneypost" do
    get moneypost_url(@moneypost)
    assert_response :success
  end

  test "should get edit" do
    get edit_moneypost_url(@moneypost)
    assert_response :success
  end

  test "should update moneypost" do
    patch moneypost_url(@moneypost), params: { moneypost: { address: @moneypost.address, description: @moneypost.description, image_url: @moneypost.image_url, price: @moneypost.price, type: @moneypost.type } }
    assert_redirected_to moneypost_url(@moneypost)
  end

  test "should destroy moneypost" do
    assert_difference('Moneypost.count', -1) do
      delete moneypost_url(@moneypost)
    end

    assert_redirected_to moneyposts_url
  end
end
