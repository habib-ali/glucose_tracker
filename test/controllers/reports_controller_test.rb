require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reports_index_url
    assert_response :success
  end

  test "should get daily" do
    get reports_daily_url
    assert_response :success
  end

  test "should get monthly" do
    get reports_monthly_url
    assert_response :success
  end

  test "should get monthwise" do
    get reports_monthwise_url
    assert_response :success
  end

end
