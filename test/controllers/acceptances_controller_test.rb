require 'test_helper'

class AcceptancesControllerTest < ActionController::TestCase
  setup do
    @acceptance = acceptances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acceptances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acceptance" do
    assert_difference('Acceptance.count') do
      post :create, acceptance: { description: @acceptance.description, rol_id: @acceptance.rol_id, user_id: @acceptance.user_id }
    end

    assert_redirected_to acceptance_path(assigns(:acceptance))
  end

  test "should show acceptance" do
    get :show, id: @acceptance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acceptance
    assert_response :success
  end

  test "should update acceptance" do
    patch :update, id: @acceptance, acceptance: { description: @acceptance.description, rol_id: @acceptance.rol_id, user_id: @acceptance.user_id }
    assert_redirected_to acceptance_path(assigns(:acceptance))
  end

  test "should destroy acceptance" do
    assert_difference('Acceptance.count', -1) do
      delete :destroy, id: @acceptance
    end

    assert_redirected_to acceptances_path
  end
end
