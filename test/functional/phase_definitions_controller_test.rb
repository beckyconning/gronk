require 'test_helper'

class PhaseDefinitionsControllerTest < ActionController::TestCase
  setup do
    @phase_definition = phase_definitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:phase_definitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create phase_definition" do
    assert_difference('PhaseDefinition.count') do
      post :create, :phase_definition => @phase_definition.attributes
    end

    assert_redirected_to phase_definition_path(assigns(:phase_definition))
  end

  test "should show phase_definition" do
    get :show, :id => @phase_definition.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @phase_definition.to_param
    assert_response :success
  end

  test "should update phase_definition" do
    put :update, :id => @phase_definition.to_param, :phase_definition => @phase_definition.attributes
    assert_redirected_to phase_definition_path(assigns(:phase_definition))
  end

  test "should destroy phase_definition" do
    assert_difference('PhaseDefinition.count', -1) do
      delete :destroy, :id => @phase_definition.to_param
    end

    assert_redirected_to phase_definitions_path
  end
end
