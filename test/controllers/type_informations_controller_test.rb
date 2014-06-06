require 'test_helper'

class TypeInformationsControllerTest < ActionController::TestCase
  setup do
    @type_information = type_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_information" do
    assert_difference('TypeInformation.count') do
      post :create, type_information: { description: @type_information.description, name: @type_information.name }
    end

    assert_redirected_to type_information_path(assigns(:type_information))
  end

  test "should show type_information" do
    get :show, id: @type_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_information
    assert_response :success
  end

  test "should update type_information" do
    patch :update, id: @type_information, type_information: { description: @type_information.description, name: @type_information.name }
    assert_redirected_to type_information_path(assigns(:type_information))
  end

  test "should destroy type_information" do
    assert_difference('TypeInformation.count', -1) do
      delete :destroy, id: @type_information
    end

    assert_redirected_to type_informations_path
  end
end
