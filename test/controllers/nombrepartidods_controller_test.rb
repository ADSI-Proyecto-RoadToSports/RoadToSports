require 'test_helper'

class NombrepartidodsControllerTest < ActionController::TestCase
  setup do
    @nombrepartidod = nombrepartidods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nombrepartidods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nombrepartidod" do
    assert_difference('Nombrepartidod.count') do
      post :create, nombrepartidod: { nombre: @nombrepartidod.nombre }
    end

    assert_redirected_to nombrepartidod_path(assigns(:nombrepartidod))
  end

  test "should show nombrepartidod" do
    get :show, id: @nombrepartidod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nombrepartidod
    assert_response :success
  end

  test "should update nombrepartidod" do
    patch :update, id: @nombrepartidod, nombrepartidod: { nombre: @nombrepartidod.nombre }
    assert_redirected_to nombrepartidod_path(assigns(:nombrepartidod))
  end

  test "should destroy nombrepartidod" do
    assert_difference('Nombrepartidod.count', -1) do
      delete :destroy, id: @nombrepartidod
    end

    assert_redirected_to nombrepartidods_path
  end
end
