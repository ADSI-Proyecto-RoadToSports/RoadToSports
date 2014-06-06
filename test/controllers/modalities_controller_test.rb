require 'test_helper'

class ModalitiesControllerTest < ActionController::TestCase
  setup do
    @modality = modalities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modalities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modality" do
    assert_difference('Modalitie.count') do
      post :create, modality: { activity_id: @modality.activity_id, modalities_type_id: @modality.modalities_type_id, name: @modality.name, players: @modality.players, tournament_id: @modality.tournament_id }
    end

    assert_redirected_to modality_path(assigns(:modality))
  end

  test "should show modality" do
    get :show, id: @modality
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @modality
    assert_response :success
  end

  test "should update modality" do
    patch :update, id: @modality, modality: { activity_id: @modality.activity_id, modalities_type_id: @modality.modalities_type_id, name: @modality.name, players: @modality.players, tournament_id: @modality.tournament_id }
    assert_redirected_to modality_path(assigns(:modality))
  end

  test "should destroy modality" do
    assert_difference('Modalitie.count', -1) do
      delete :destroy, id: @modality
    end

    assert_redirected_to modalities_path
  end
end
