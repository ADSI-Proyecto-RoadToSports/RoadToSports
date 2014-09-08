require 'test_helper'

class NombrepartidomsControllerTest < ActionController::TestCase
  setup do
    @nombrepartidom = nombrepartidoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nombrepartidoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nombrepartidom" do
    assert_difference('Nombrepartidom.count') do
      post :create, nombrepartidom: { nombre: @nombrepartidom.nombre }
    end

    assert_redirected_to nombrepartidom_path(assigns(:nombrepartidom))
  end

  test "should show nombrepartidom" do
    get :show, id: @nombrepartidom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nombrepartidom
    assert_response :success
  end

  test "should update nombrepartidom" do
    patch :update, id: @nombrepartidom, nombrepartidom: { nombre: @nombrepartidom.nombre }
    assert_redirected_to nombrepartidom_path(assigns(:nombrepartidom))
  end

  test "should destroy nombrepartidom" do
    assert_difference('Nombrepartidom.count', -1) do
      delete :destroy, id: @nombrepartidom
    end

    assert_redirected_to nombrepartidoms_path
  end
end
