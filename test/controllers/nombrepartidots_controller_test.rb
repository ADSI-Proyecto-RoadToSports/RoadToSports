require 'test_helper'

class NombrepartidotsControllerTest < ActionController::TestCase
  setup do
    @nombrepartidot = nombrepartidots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nombrepartidots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nombrepartidot" do
    assert_difference('Nombrepartidot.count') do
      post :create, nombrepartidot: { nombre: @nombrepartidot.nombre }
    end

    assert_redirected_to nombrepartidot_path(assigns(:nombrepartidot))
  end

  test "should show nombrepartidot" do
    get :show, id: @nombrepartidot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nombrepartidot
    assert_response :success
  end

  test "should update nombrepartidot" do
    patch :update, id: @nombrepartidot, nombrepartidot: { nombre: @nombrepartidot.nombre }
    assert_redirected_to nombrepartidot_path(assigns(:nombrepartidot))
  end

  test "should destroy nombrepartidot" do
    assert_difference('Nombrepartidot.count', -1) do
      delete :destroy, id: @nombrepartidot
    end

    assert_redirected_to nombrepartidots_path
  end
end
