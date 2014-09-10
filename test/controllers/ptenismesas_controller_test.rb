require 'test_helper'

class PtenismesasControllerTest < ActionController::TestCase
  setup do
    @ptenismesa = ptenismesas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ptenismesas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ptenismesa" do
    assert_difference('Ptenismesa.count') do
      post :create, ptenismesa: { estado: @ptenismesa.estado, fecha: @ptenismesa.fecha, participante1: @ptenismesa.participante1, participante2: @ptenismesa.participante2, puntos1: @ptenismesa.puntos1, puntos2: @ptenismesa.puntos2, tournament_id: @ptenismesa.tournament_id, user_id: @ptenismesa.user_id }
    end

    assert_redirected_to ptenismesa_path(assigns(:ptenismesa))
  end

  test "should show ptenismesa" do
    get :show, id: @ptenismesa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ptenismesa
    assert_response :success
  end

  test "should update ptenismesa" do
    patch :update, id: @ptenismesa, ptenismesa: { estado: @ptenismesa.estado, fecha: @ptenismesa.fecha, participante1: @ptenismesa.participante1, participante2: @ptenismesa.participante2, puntos1: @ptenismesa.puntos1, puntos2: @ptenismesa.puntos2, tournament_id: @ptenismesa.tournament_id, user_id: @ptenismesa.user_id }
    assert_redirected_to ptenismesa_path(assigns(:ptenismesa))
  end

  test "should destroy ptenismesa" do
    assert_difference('Ptenismesa.count', -1) do
      delete :destroy, id: @ptenismesa
    end

    assert_redirected_to ptenismesas_path
  end
end
