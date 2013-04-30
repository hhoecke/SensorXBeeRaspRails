require 'test_helper'

class SensorViewControllerTest < ActionController::TestCase
  test "should get live" do
    get :live
    assert_response :success
  end

  test "should get history" do
    get :history
    assert_response :success
  end

end
