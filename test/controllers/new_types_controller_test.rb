require 'test_helper'

class NewTypesControllerTest < ActionController::TestCase
  setup do
    @new_type = new_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_type" do
    assert_difference('NewType.count') do
      post :create, new_type: { description: @new_type.description, name: @new_type.name }
    end

    assert_redirected_to new_type_path(assigns(:new_type))
  end

  test "should show new_type" do
    get :show, id: @new_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_type
    assert_response :success
  end

  test "should update new_type" do
    patch :update, id: @new_type, new_type: { description: @new_type.description, name: @new_type.name }
    assert_redirected_to new_type_path(assigns(:new_type))
  end

  test "should destroy new_type" do
    assert_difference('NewType.count', -1) do
      delete :destroy, id: @new_type
    end

    assert_redirected_to new_types_path
  end
end
