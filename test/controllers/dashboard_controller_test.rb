require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get dashboard_login_url
    assert_response :success
  end

  test "should get landingPage" do
    get dashboard_landingPage_url
    assert_response :success
  end

  test "should get courseDashboard" do
    get dashboard_courseDashboard_url
    assert_response :success
  end

end
