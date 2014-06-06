require 'test_helper'

class TypeTournamentsControllerTest < ActionController::TestCase
  setup do
    @type_tournament = type_tournaments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_tournaments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_tournament" do
    assert_difference('TypeTournament.count') do
      post :create, type_tournament: { description: @type_tournament.description, name: @type_tournament.name }
    end

    assert_redirected_to type_tournament_path(assigns(:type_tournament))
  end

  test "should show type_tournament" do
    get :show, id: @type_tournament
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_tournament
    assert_response :success
  end

  test "should update type_tournament" do
    patch :update, id: @type_tournament, type_tournament: { description: @type_tournament.description, name: @type_tournament.name }
    assert_redirected_to type_tournament_path(assigns(:type_tournament))
  end

  test "should destroy type_tournament" do
    assert_difference('TypeTournament.count', -1) do
      delete :destroy, id: @type_tournament
    end

    assert_redirected_to type_tournaments_path
  end
end
