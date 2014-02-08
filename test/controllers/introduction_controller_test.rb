require 'test_helper'

class IntroductionControllerTest < ActionController::TestCase
  test "should get scenario" do
    get :scenario
    assert_response :success
  end

  test "should get starting" do
    get :starting
    assert_response :success
  end

  test "should get information" do
    get :information
    assert_response :success
  end

  test "should get resources" do
    get :resources
    assert_response :success
  end

end
