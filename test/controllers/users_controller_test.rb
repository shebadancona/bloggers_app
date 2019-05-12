require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get registration" do
    get users_registration_url
    assert_response :success
  end

  test "should get create" do
    get users_create_url
    assert_response :success
  end

  test "should get new" do
    get users_new_url
    assert_response :success
  end

end
