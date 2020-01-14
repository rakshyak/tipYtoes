require 'test_helper'

class CaregoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caregory = caregories(:one)
  end

  test "should get index" do
    get caregories_url, as: :json
    assert_response :success
  end

  test "should create caregory" do
    assert_difference('Caregory.count') do
      post caregories_url, params: { caregory: { name: @caregory.name } }, as: :json
    end

    assert_response 201
  end

  test "should show caregory" do
    get caregory_url(@caregory), as: :json
    assert_response :success
  end

  test "should update caregory" do
    patch caregory_url(@caregory), params: { caregory: { name: @caregory.name } }, as: :json
    assert_response 200
  end

  test "should destroy caregory" do
    assert_difference('Caregory.count', -1) do
      delete caregory_url(@caregory), as: :json
    end

    assert_response 204
  end
end
