require 'test_helper'

class DreamDefinitionsControllerTest < ActionController::TestCase
  setup do
    @dream_definition = dream_definitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dream_definitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dream_definition" do
    assert_difference('DreamDefinition.count') do
      post :create, :dream_definition => @dream_definition.attributes
    end

    assert_redirected_to dream_definition_path(assigns(:dream_definition))
  end

  test "should show dream_definition" do
    get :show, :id => @dream_definition.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dream_definition.to_param
    assert_response :success
  end

  test "should update dream_definition" do
    put :update, :id => @dream_definition.to_param, :dream_definition => @dream_definition.attributes
    assert_redirected_to dream_definition_path(assigns(:dream_definition))
  end

  test "should destroy dream_definition" do
    assert_difference('DreamDefinition.count', -1) do
      delete :destroy, :id => @dream_definition.to_param
    end

    assert_redirected_to dream_definitions_path
  end
end
