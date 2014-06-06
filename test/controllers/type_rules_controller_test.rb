require 'test_helper'

class TypeRulesControllerTest < ActionController::TestCase
  setup do
    @type_rule = type_rules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_rules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_rule" do
    assert_difference('TypeRule.count') do
      post :create, type_rule: { description: @type_rule.description, name: @type_rule.name }
    end

    assert_redirected_to type_rule_path(assigns(:type_rule))
  end

  test "should show type_rule" do
    get :show, id: @type_rule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_rule
    assert_response :success
  end

  test "should update type_rule" do
    patch :update, id: @type_rule, type_rule: { description: @type_rule.description, name: @type_rule.name }
    assert_redirected_to type_rule_path(assigns(:type_rule))
  end

  test "should destroy type_rule" do
    assert_difference('TypeRule.count', -1) do
      delete :destroy, id: @type_rule
    end

    assert_redirected_to type_rules_path
  end
end
