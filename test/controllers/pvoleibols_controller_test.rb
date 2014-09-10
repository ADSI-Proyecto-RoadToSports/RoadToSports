require 'test_helper'

class PvoleibolsControllerTest < ActionController::TestCase
  setup do
    @pvoleibol = pvoleibols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pvoleibols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pvoleibol" do
    assert_difference('Pvoleibol.count') do
      post :create, pvoleibol: { equipo1: @pvoleibol.equipo1, equipo2: @pvoleibol.equipo2, estado: @pvoleibol.estado, fecha: @pvoleibol.fecha, puntos1: @pvoleibol.puntos1, puntos2: @pvoleibol.puntos2, puntoso1: @pvoleibol.puntoso1, puntoso2: @pvoleibol.puntoso2, tournament_id: @pvoleibol.tournament_id, user_id: @pvoleibol.user_id }
    end

    assert_redirected_to pvoleibol_path(assigns(:pvoleibol))
  end

  test "should show pvoleibol" do
    get :show, id: @pvoleibol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pvoleibol
    assert_response :success
  end

  test "should update pvoleibol" do
    patch :update, id: @pvoleibol, pvoleibol: { equipo1: @pvoleibol.equipo1, equipo2: @pvoleibol.equipo2, estado: @pvoleibol.estado, fecha: @pvoleibol.fecha, puntos1: @pvoleibol.puntos1, puntos2: @pvoleibol.puntos2, puntoso1: @pvoleibol.puntoso1, puntoso2: @pvoleibol.puntoso2, tournament_id: @pvoleibol.tournament_id, user_id: @pvoleibol.user_id }
    assert_redirected_to pvoleibol_path(assigns(:pvoleibol))
  end

  test "should destroy pvoleibol" do
    assert_difference('Pvoleibol.count', -1) do
      delete :destroy, id: @pvoleibol
    end

    assert_redirected_to pvoleibols_path
  end
end
