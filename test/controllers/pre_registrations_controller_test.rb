require 'test_helper'

class PreRegistrationsControllerTest < ActionController::TestCase
  setup do
    @pre_registration = pre_registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pre_registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pre_registration" do
    assert_difference('PreRegistration.count') do
      post :create, pre_registration: { acceptance_id: @pre_registration.acceptance_id, description: @pre_registration.description, modalities: @pre_registration.modalities, name: @pre_registration.name, tournament_id: @pre_registration.tournament_id, user_id: @pre_registration.user_id }
    end

    assert_redirected_to pre_registration_path(assigns(:pre_registration))
  end

  test "should show pre_registration" do
    get :show, id: @pre_registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pre_registration
    assert_response :success
  end

  test "should update pre_registration" do
    patch :update, id: @pre_registration, pre_registration: { acceptance_id: @pre_registration.acceptance_id, description: @pre_registration.description, modalities: @pre_registration.modalities, name: @pre_registration.name, tournament_id: @pre_registration.tournament_id, user_id: @pre_registration.user_id }
    assert_redirected_to pre_registration_path(assigns(:pre_registration))
  end

  test "should destroy pre_registration" do
    assert_difference('PreRegistration.count', -1) do
      delete :destroy, id: @pre_registration
    end

    assert_redirected_to pre_registrations_path
  end
end
