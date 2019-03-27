require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get sing_in" do
    get admin_sing_in_url
    assert_response :success
  end

end
