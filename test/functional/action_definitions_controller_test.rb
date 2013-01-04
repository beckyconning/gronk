require 'test_helper'

class ActionDefinitionsControllerTest < ActionController::TestCase
  setup do
    @action_definition = action_definitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:action_definitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create action_definition" do
    assert_difference('ActionDefinition.count') do
      post :create, :action_definition => @action_definition.attributes
    end

    assert_redirected_to action_definition_path(assigns(:action_definition))
  end

  test "should show action_definition" do
    get :show, :id => @action_definition.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @action_definition.to_param
    assert_response :success
  end

  test "should update action_definition" do
    put :update, :id => @action_definition.to_param, :action_definition => @action_definition.attributes
    assert_redirected_to action_definition_path(assigns(:action_definition))
  end

  test "should destroy action_definition" do
    assert_difference('ActionDefinition.count', -1) do
      delete :destroy, :id => @action_definition.to_param
    end

    assert_redirected_to action_definitions_path
  end
end
