require 'test_helper'

class TypeChangesControllerTest < ActionController::TestCase
  setup do
    @type_change = type_changes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_changes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_change" do
    assert_difference('TypeChange.count') do
      post :create, type_change: { description: @type_change.description, name: @type_change.name }
    end

    assert_redirected_to type_change_path(assigns(:type_change))
  end

  test "should show type_change" do
    get :show, id: @type_change
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_change
    assert_response :success
  end

  test "should update type_change" do
    patch :update, id: @type_change, type_change: { description: @type_change.description, name: @type_change.name }
    assert_redirected_to type_change_path(assigns(:type_change))
  end

  test "should destroy type_change" do
    assert_difference('TypeChange.count', -1) do
      delete :destroy, id: @type_change
    end

    assert_redirected_to type_changes_path
  end
end
