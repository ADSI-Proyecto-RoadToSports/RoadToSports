require 'test_helper'

class NombrepartidosControllerTest < ActionController::TestCase
  setup do
    @nombrepartido = nombrepartidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nombrepartidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nombrepartido" do
    assert_difference('Nombrepartido.count') do
      post :create, nombrepartido: { nombre: @nombrepartido.nombre }
    end

    assert_redirected_to nombrepartido_path(assigns(:nombrepartido))
  end

  test "should show nombrepartido" do
    get :show, id: @nombrepartido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nombrepartido
    assert_response :success
  end

  test "should update nombrepartido" do
    patch :update, id: @nombrepartido, nombrepartido: { nombre: @nombrepartido.nombre }
    assert_redirected_to nombrepartido_path(assigns(:nombrepartido))
  end

  test "should destroy nombrepartido" do
    assert_difference('Nombrepartido.count', -1) do
      delete :destroy, id: @nombrepartido
    end

    assert_redirected_to nombrepartidos_path
  end
end
