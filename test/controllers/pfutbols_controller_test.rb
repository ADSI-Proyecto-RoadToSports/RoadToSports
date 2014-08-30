require 'test_helper'

class PfutbolsControllerTest < ActionController::TestCase
  setup do
    @pfutbol = pfutbols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pfutbols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pfutbol" do
    assert_difference('Pfutbol.count') do
      post :create, pfutbol: { equipo1: @pfutbol.equipo1, equipo2: @pfutbol.equipo2, estado: @pfutbol.estado, fecha: @pfutbol.fecha, gano1: @pfutbol.gano1, gano2: @pfutbol.gano2, puntos2: @pfutbol.puntos2, puntos2: @pfutbol.puntos2, user_id: @pfutbol.user_id }
    end

    assert_redirected_to pfutbol_path(assigns(:pfutbol))
  end

  test "should show pfutbol" do
    get :show, id: @pfutbol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pfutbol
    assert_response :success
  end

  test "should update pfutbol" do
    patch :update, id: @pfutbol, pfutbol: { equipo1: @pfutbol.equipo1, equipo2: @pfutbol.equipo2, estado: @pfutbol.estado, fecha: @pfutbol.fecha, gano1: @pfutbol.gano1, gano2: @pfutbol.gano2, puntos2: @pfutbol.puntos2, puntos2: @pfutbol.puntos2, user_id: @pfutbol.user_id }
    assert_redirected_to pfutbol_path(assigns(:pfutbol))
  end

  test "should destroy pfutbol" do
    assert_difference('Pfutbol.count', -1) do
      delete :destroy, id: @pfutbol
    end

    assert_redirected_to pfutbols_path
  end
end
