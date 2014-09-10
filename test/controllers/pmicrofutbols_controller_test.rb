require 'test_helper'

class PmicrofutbolsControllerTest < ActionController::TestCase
  setup do
    @pmicrofutbol = pmicrofutbols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pmicrofutbols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pmicrofutbol" do
    assert_difference('Pmicrofutbol.count') do
      post :create, pmicrofutbol: { equipo1: @pmicrofutbol.equipo1, equipo2: @pmicrofutbol.equipo2, estado: @pmicrofutbol.estado, fecha: @pmicrofutbol.fecha, puntos1: @pmicrofutbol.puntos1, puntos2: @pmicrofutbol.puntos2, puntoso1: @pmicrofutbol.puntoso1, puntoso2: @pmicrofutbol.puntoso2, tournament_id: @pmicrofutbol.tournament_id, user_id: @pmicrofutbol.user_id }
    end

    assert_redirected_to pmicrofutbol_path(assigns(:pmicrofutbol))
  end

  test "should show pmicrofutbol" do
    get :show, id: @pmicrofutbol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pmicrofutbol
    assert_response :success
  end

  test "should update pmicrofutbol" do
    patch :update, id: @pmicrofutbol, pmicrofutbol: { equipo1: @pmicrofutbol.equipo1, equipo2: @pmicrofutbol.equipo2, estado: @pmicrofutbol.estado, fecha: @pmicrofutbol.fecha, puntos1: @pmicrofutbol.puntos1, puntos2: @pmicrofutbol.puntos2, puntoso1: @pmicrofutbol.puntoso1, puntoso2: @pmicrofutbol.puntoso2, tournament_id: @pmicrofutbol.tournament_id, user_id: @pmicrofutbol.user_id }
    assert_redirected_to pmicrofutbol_path(assigns(:pmicrofutbol))
  end

  test "should destroy pmicrofutbol" do
    assert_difference('Pmicrofutbol.count', -1) do
      delete :destroy, id: @pmicrofutbol
    end

    assert_redirected_to pmicrofutbols_path
  end
end
