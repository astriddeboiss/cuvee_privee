require 'test_helper'

class VinesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vines_index_url
    assert_response :success
  end

  test "should get show" do
    get vines_show_url
    assert_response :success
  end

  test "should get new" do
    get vines_new_url
    assert_response :success
  end

  test "should get create" do
    get vines_create_url
    assert_response :success
  end

end
