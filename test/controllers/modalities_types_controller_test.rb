require 'test_helper'

class ModalitiesTypesControllerTest < ActionController::TestCase
  setup do
    @modalities_type = modalities_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modalities_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modalities_type" do
    assert_difference('ModalitiesType.count') do
      post :create, modalities_type: { description: @modalities_type.description, name: @modalities_type.name }
    end

    assert_redirected_to modalities_type_path(assigns(:modalities_type))
  end

  test "should show modalities_type" do
    get :show, id: @modalities_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @modalities_type
    assert_response :success
  end

  test "should update modalities_type" do
    patch :update, id: @modalities_type, modalities_type: { description: @modalities_type.description, name: @modalities_type.name }
    assert_redirected_to modalities_type_path(assigns(:modalities_type))
  end

  test "should destroy modalities_type" do
    assert_difference('ModalitiesType.count', -1) do
      delete :destroy, id: @modalities_type
    end

    assert_redirected_to modalities_types_path
  end
end
