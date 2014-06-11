require 'test_helper'

class FchLgMatchesControllerTest < ActionController::TestCase
  setup do
    @fch_lg_match = fch_lg_matches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fch_lg_matches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fch_lg_match" do
    assert_difference('FchLgMatch.count') do
      post :create, fch_lg_match: { description: @fch_lg_match.description, endingdate: @fch_lg_match.endingdate, place: @fch_lg_match.place, startdate: @fch_lg_match.startdate, team: @fch_lg_match.team, tournament_id: @fch_lg_match.tournament_id }
    end

    assert_redirected_to fch_lg_match_path(assigns(:fch_lg_match))
  end

  test "should show fch_lg_match" do
    get :show, id: @fch_lg_match
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fch_lg_match
    assert_response :success
  end

  test "should update fch_lg_match" do
    patch :update, id: @fch_lg_match, fch_lg_match: { description: @fch_lg_match.description, endingdate: @fch_lg_match.endingdate, place: @fch_lg_match.place, startdate: @fch_lg_match.startdate, team: @fch_lg_match.team, tournament_id: @fch_lg_match.tournament_id }
    assert_redirected_to fch_lg_match_path(assigns(:fch_lg_match))
  end

  test "should destroy fch_lg_match" do
    assert_difference('FchLgMatch.count', -1) do
      delete :destroy, id: @fch_lg_match
    end

    assert_redirected_to fch_lg_matches_path
  end
end
