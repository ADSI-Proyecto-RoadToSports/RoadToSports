require 'test_helper'

class NombrepartidocsControllerTest < ActionController::TestCase
  setup do
    @nombrepartidoc = nombrepartidocs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nombrepartidocs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nombrepartidoc" do
    assert_difference('Nombrepartidoc.count') do
      post :create, nombrepartidoc: { nombre: @nombrepartidoc.nombre }
    end

    assert_redirected_to nombrepartidoc_path(assigns(:nombrepartidoc))
  end

  test "should show nombrepartidoc" do
    get :show, id: @nombrepartidoc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nombrepartidoc
    assert_response :success
  end

  test "should update nombrepartidoc" do
    patch :update, id: @nombrepartidoc, nombrepartidoc: { nombre: @nombrepartidoc.nombre }
    assert_redirected_to nombrepartidoc_path(assigns(:nombrepartidoc))
  end

  test "should destroy nombrepartidoc" do
    assert_difference('Nombrepartidoc.count', -1) do
      delete :destroy, id: @nombrepartidoc
    end

    assert_redirected_to nombrepartidocs_path
  end
end
