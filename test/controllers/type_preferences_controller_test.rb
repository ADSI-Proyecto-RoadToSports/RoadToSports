require 'test_helper'

class TypePreferencesControllerTest < ActionController::TestCase
  setup do
    @type_preference = type_preferences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_preferences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_preference" do
    assert_difference('TypePreference.count') do
      post :create, type_preference: { description: @type_preference.description, name: @type_preference.name }
    end

    assert_redirected_to type_preference_path(assigns(:type_preference))
  end

  test "should show type_preference" do
    get :show, id: @type_preference
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_preference
    assert_response :success
  end

  test "should update type_preference" do
    patch :update, id: @type_preference, type_preference: { description: @type_preference.description, name: @type_preference.name }
    assert_redirected_to type_preference_path(assigns(:type_preference))
  end

  test "should destroy type_preference" do
    assert_difference('TypePreference.count', -1) do
      delete :destroy, id: @type_preference
    end

    assert_redirected_to type_preferences_path
  end
end
