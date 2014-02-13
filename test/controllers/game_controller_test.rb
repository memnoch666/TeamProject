require 'test_helper'

class GameControllerTest < ActionController::TestCase
  test "should get level" do
    get :level
    assert_response :success
  end

  test "should get question" do
    get :question
    assert_response :success
  end

  test "should get answer" do
    get :answer
    assert_response :success
  end

  test "should get solution" do
    get :solution
    assert_response :success
  end

end
