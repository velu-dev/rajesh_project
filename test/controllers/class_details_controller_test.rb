require 'test_helper'

class ClassDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_detail = class_details(:one)
  end

  test "should get index" do
    get class_details_url
    assert_response :success
  end

  test "should get new" do
    get new_class_detail_url
    assert_response :success
  end

  test "should create class_detail" do
    assert_difference('ClassDetail.count') do
      post class_details_url, params: { class_detail: { class_name: @class_detail.class_name, description: @class_detail.description } }
    end

    assert_redirected_to class_detail_url(ClassDetail.last)
  end

  test "should show class_detail" do
    get class_detail_url(@class_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_detail_url(@class_detail)
    assert_response :success
  end

  test "should update class_detail" do
    patch class_detail_url(@class_detail), params: { class_detail: { class_name: @class_detail.class_name, description: @class_detail.description } }
    assert_redirected_to class_detail_url(@class_detail)
  end

  test "should destroy class_detail" do
    assert_difference('ClassDetail.count', -1) do
      delete class_detail_url(@class_detail)
    end

    assert_redirected_to class_details_url
  end
end
