require 'test_helper'

class GameMovesControllerTest < ActionController::TestCase
  setup do
    @game_move = game_moves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_moves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_move" do
    assert_difference('GameMove.count') do
      post :create, game_move: { code: @game_move.code, description: @game_move.description, game_type_id: @game_move.game_type_id }
    end

    assert_redirected_to game_move_path(assigns(:game_move))
  end

  test "should show game_move" do
    get :show, id: @game_move
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_move
    assert_response :success
  end

  test "should update game_move" do
    patch :update, id: @game_move, game_move: { code: @game_move.code, description: @game_move.description, game_type_id: @game_move.game_type_id }
    assert_redirected_to game_move_path(assigns(:game_move))
  end

  test "should destroy game_move" do
    assert_difference('GameMove.count', -1) do
      delete :destroy, id: @game_move
    end

    assert_redirected_to game_moves_path
  end
end
