require 'test_helper'

class RussianRoulettesControllerTest < ActionController::TestCase
  setup do
    @russian_roulette = russian_roulettes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:russian_roulettes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create russian_roulette" do
    assert_difference('RussianRoulette.count') do
      post :create, russian_roulette: { alive: @russian_roulette.alive, bulloc: @russian_roulette.bulloc, player: @russian_roulette.player, round: @russian_roulette.round }
    end

    assert_redirected_to russian_roulette_path(assigns(:russian_roulette))
  end

  test "should show russian_roulette" do
    get :show, id: @russian_roulette
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @russian_roulette
    assert_response :success
  end

  test "should update russian_roulette" do
    patch :update, id: @russian_roulette, russian_roulette: { alive: @russian_roulette.alive, bulloc: @russian_roulette.bulloc, player: @russian_roulette.player, round: @russian_roulette.round }
    assert_redirected_to russian_roulette_path(assigns(:russian_roulette))
  end

  test "should destroy russian_roulette" do
    assert_difference('RussianRoulette.count', -1) do
      delete :destroy, id: @russian_roulette
    end

    assert_redirected_to russian_roulettes_path
  end
end
