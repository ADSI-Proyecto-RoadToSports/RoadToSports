require 'test_helper'

class NombrepartidobsControllerTest < ActionController::TestCase
  setup do
    @nombrepartidob = nombrepartidobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nombrepartidobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nombrepartidob" do
    assert_difference('Nombrepartidob.count') do
      post :create, nombrepartidob: { nombre: @nombrepartidob.nombre }
    end

    assert_redirected_to nombrepartidob_path(assigns(:nombrepartidob))
  end

  test "should show nombrepartidob" do
    get :show, id: @nombrepartidob
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nombrepartidob
    assert_response :success
  end

  test "should update nombrepartidob" do
    patch :update, id: @nombrepartidob, nombrepartidob: { nombre: @nombrepartidob.nombre }
    assert_redirected_to nombrepartidob_path(assigns(:nombrepartidob))
  end

  test "should destroy nombrepartidob" do
    assert_difference('Nombrepartidob.count', -1) do
      delete :destroy, id: @nombrepartidob
    end

    assert_redirected_to nombrepartidobs_path
  end
end
