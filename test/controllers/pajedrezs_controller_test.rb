require 'test_helper'

class PajedrezsControllerTest < ActionController::TestCase
  setup do
    @pajedrez = pajedrezs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pajedrezs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pajedrez" do
    assert_difference('Pajedrez.count') do
      post :create, pajedrez: { estado: @pajedrez.estado, fecha: @pajedrez.fecha, participante1: @pajedrez.participante1, participante2: @pajedrez.participante2, puntos1: @pajedrez.puntos1, puntos2: @pajedrez.puntos2, tournament_id: @pajedrez.tournament_id, user_id: @pajedrez.user_id }
    end

    assert_redirected_to pajedrez_path(assigns(:pajedrez))
  end

  test "should show pajedrez" do
    get :show, id: @pajedrez
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pajedrez
    assert_response :success
  end

  test "should update pajedrez" do
    patch :update, id: @pajedrez, pajedrez: { estado: @pajedrez.estado, fecha: @pajedrez.fecha, participante1: @pajedrez.participante1, participante2: @pajedrez.participante2, puntos1: @pajedrez.puntos1, puntos2: @pajedrez.puntos2, tournament_id: @pajedrez.tournament_id, user_id: @pajedrez.user_id }
    assert_redirected_to pajedrez_path(assigns(:pajedrez))
  end

  test "should destroy pajedrez" do
    assert_difference('Pajedrez.count', -1) do
      delete :destroy, id: @pajedrez
    end

    assert_redirected_to pajedrezs_path
  end
end
