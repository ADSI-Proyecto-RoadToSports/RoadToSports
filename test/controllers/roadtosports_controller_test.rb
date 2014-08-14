require 'test_helper'

class RoadtosportsControllerTest < ActionController::TestCase
  test "should get registros" do
    get :registros
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get acerca" do
    get :acerca
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

end
