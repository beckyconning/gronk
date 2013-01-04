require 'test_helper'

class CreatureDefinitionsControllerTest < ActionController::TestCase
  setup do
    @creature_definition = creature_definitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:creature_definitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create creature_definition" do
    assert_difference('CreatureDefinition.count') do
      post :create, :creature_definition => @creature_definition.attributes
    end

    assert_redirected_to creature_definition_path(assigns(:creature_definition))
  end

  test "should show creature_definition" do
    get :show, :id => @creature_definition.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @creature_definition.to_param
    assert_response :success
  end

  test "should update creature_definition" do
    put :update, :id => @creature_definition.to_param, :creature_definition => @creature_definition.attributes
    assert_redirected_to creature_definition_path(assigns(:creature_definition))
  end

  test "should destroy creature_definition" do
    assert_difference('CreatureDefinition.count', -1) do
      delete :destroy, :id => @creature_definition.to_param
    end

    assert_redirected_to creature_definitions_path
  end
end
