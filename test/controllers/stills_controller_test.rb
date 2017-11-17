require 'test_helper'

class StillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @still = stills(:one)
  end

  test "should get index" do
    get stills_url
    assert_response :success
  end

  test "should get new" do
    get new_still_url
    assert_response :success
  end

  test "should create still" do
    assert_difference('Still.count') do
      post stills_url, params: { still: { email: @still.email, name: @still.name, phone: @still.phone } }
    end

    assert_redirected_to still_url(Still.last)
  end

  test "should show still" do
    get still_url(@still)
    assert_response :success
  end

  test "should get edit" do
    get edit_still_url(@still)
    assert_response :success
  end

  test "should update still" do
    patch still_url(@still), params: { still: { email: @still.email, name: @still.name, phone: @still.phone } }
    assert_redirected_to still_url(@still)
  end

  test "should destroy still" do
    assert_difference('Still.count', -1) do
      delete still_url(@still)
    end

    assert_redirected_to stills_url
  end
end
