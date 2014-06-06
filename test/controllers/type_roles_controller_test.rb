require 'test_helper'

class TypeRolesControllerTest < ActionController::TestCase
  setup do
    @type_role = type_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_role" do
    assert_difference('TypeRole.count') do
      post :create, type_role: { description: @type_role.description, name: @type_role.name }
    end

    assert_redirected_to type_role_path(assigns(:type_role))
  end

  test "should show type_role" do
    get :show, id: @type_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_role
    assert_response :success
  end

  test "should update type_role" do
    patch :update, id: @type_role, type_role: { description: @type_role.description, name: @type_role.name }
    assert_redirected_to type_role_path(assigns(:type_role))
  end

  test "should destroy type_role" do
    assert_difference('TypeRole.count', -1) do
      delete :destroy, id: @type_role
    end

    assert_redirected_to type_roles_path
  end
end
