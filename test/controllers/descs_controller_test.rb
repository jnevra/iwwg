require 'test_helper'

class DescsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @desc = descs(:one)
  end

  test "should get index" do
    get descs_url
    assert_response :success
  end

  test "should get new" do
    get new_desc_url
    assert_response :success
  end

  test "should create desc" do
    assert_difference('Desc.count') do
      post descs_url, params: { desc: { desc_name: @desc.desc_name } }
    end

    assert_redirected_to desc_url(Desc.last)
  end

  test "should show desc" do
    get desc_url(@desc)
    assert_response :success
  end

  test "should get edit" do
    get edit_desc_url(@desc)
    assert_response :success
  end

  test "should update desc" do
    patch desc_url(@desc), params: { desc: { desc_name: @desc.desc_name } }
    assert_redirected_to desc_url(@desc)
  end

  test "should destroy desc" do
    assert_difference('Desc.count', -1) do
      delete desc_url(@desc)
    end

    assert_redirected_to descs_url
  end
end
