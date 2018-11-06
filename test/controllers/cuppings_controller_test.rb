require 'test_helper'

class CuppingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cuppings_new_url
    assert_response :success
  end

  test "should get show" do
    get cuppings_show_url
    assert_response :success
  end

  test "should get edit" do
    get cuppings_edit_url
    assert_response :success
  end

end
