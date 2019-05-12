require 'test_helper'

class WritersControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get writers_login_url
    assert_response :success
  end

end
