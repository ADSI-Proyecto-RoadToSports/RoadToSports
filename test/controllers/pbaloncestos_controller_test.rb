require 'test_helper'

class PbaloncestosControllerTest < ActionController::TestCase
  setup do
    @pbaloncesto = pbaloncestos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pbaloncestos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pbaloncesto" do
    assert_difference('Pbaloncesto.count') do
      post :create, pbaloncesto: { equipo1: @pbaloncesto.equipo1, equipo2: @pbaloncesto.equipo2, estado: @pbaloncesto.estado, fecha: @pbaloncesto.fecha, puntos1: @pbaloncesto.puntos1, puntos2: @pbaloncesto.puntos2, puntoso1: @pbaloncesto.puntoso1, puntoso2: @pbaloncesto.puntoso2, tournament_id: @pbaloncesto.tournament_id, user_id: @pbaloncesto.user_id }
    end

    assert_redirected_to pbaloncesto_path(assigns(:pbaloncesto))
  end

  test "should show pbaloncesto" do
    get :show, id: @pbaloncesto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pbaloncesto
    assert_response :success
  end

  test "should update pbaloncesto" do
    patch :update, id: @pbaloncesto, pbaloncesto: { equipo1: @pbaloncesto.equipo1, equipo2: @pbaloncesto.equipo2, estado: @pbaloncesto.estado, fecha: @pbaloncesto.fecha, puntos1: @pbaloncesto.puntos1, puntos2: @pbaloncesto.puntos2, puntoso1: @pbaloncesto.puntoso1, puntoso2: @pbaloncesto.puntoso2, tournament_id: @pbaloncesto.tournament_id, user_id: @pbaloncesto.user_id }
    assert_redirected_to pbaloncesto_path(assigns(:pbaloncesto))
  end

  test "should destroy pbaloncesto" do
    assert_difference('Pbaloncesto.count', -1) do
      delete :destroy, id: @pbaloncesto
    end

    assert_redirected_to pbaloncestos_path
  end
end
