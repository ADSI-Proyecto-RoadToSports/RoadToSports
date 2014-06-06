require 'test_helper'

class TypeConfigurationsControllerTest < ActionController::TestCase
  setup do
    @type_configuration = type_configurations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_configurations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_configuration" do
    assert_difference('TypeConfiguration.count') do
      post :create, type_configuration: { description: @type_configuration.description, name: @type_configuration.name }
    end

    assert_redirected_to type_configuration_path(assigns(:type_configuration))
  end

  test "should show type_configuration" do
    get :show, id: @type_configuration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_configuration
    assert_response :success
  end

  test "should update type_configuration" do
    patch :update, id: @type_configuration, type_configuration: { description: @type_configuration.description, name: @type_configuration.name }
    assert_redirected_to type_configuration_path(assigns(:type_configuration))
  end

  test "should destroy type_configuration" do
    assert_difference('TypeConfiguration.count', -1) do
      delete :destroy, id: @type_configuration
    end

    assert_redirected_to type_configurations_path
  end
end
