require 'test_helper'

class GpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gpost = gposts(:one)
  end

  test "should get index" do
    get gposts_url
    assert_response :success
  end

  test "should get new" do
    get new_gpost_url
    assert_response :success
  end

  test "should create gpost" do
    assert_difference('Gpost.count') do
      post gposts_url, params: { gpost: { address: @gpost.address, description: @gpost.description, image_url: @gpost.image_url, price: @gpost.price, type: @gpost.type } }
    end

    assert_redirected_to gpost_url(Gpost.last)
  end

  test "should show gpost" do
    get gpost_url(@gpost)
    assert_response :success
  end

  test "should get edit" do
    get edit_gpost_url(@gpost)
    assert_response :success
  end

  test "should update gpost" do
    patch gpost_url(@gpost), params: { gpost: { address: @gpost.address, description: @gpost.description, image_url: @gpost.image_url, price: @gpost.price, type: @gpost.type } }
    assert_redirected_to gpost_url(@gpost)
  end

  test "should destroy gpost" do
    assert_difference('Gpost.count', -1) do
      delete gpost_url(@gpost)
    end

    assert_redirected_to gposts_url
  end
end
