require 'test_helper'

class FeelingDefinitionsControllerTest < ActionController::TestCase
  setup do
    @feeling_definition = feeling_definitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feeling_definitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feeling_definition" do
    assert_difference('FeelingDefinition.count') do
      post :create, :feeling_definition => @feeling_definition.attributes
    end

    assert_redirected_to feeling_definition_path(assigns(:feeling_definition))
  end

  test "should show feeling_definition" do
    get :show, :id => @feeling_definition.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @feeling_definition.to_param
    assert_response :success
  end

  test "should update feeling_definition" do
    put :update, :id => @feeling_definition.to_param, :feeling_definition => @feeling_definition.attributes
    assert_redirected_to feeling_definition_path(assigns(:feeling_definition))
  end

  test "should destroy feeling_definition" do
    assert_difference('FeelingDefinition.count', -1) do
      delete :destroy, :id => @feeling_definition.to_param
    end

    assert_redirected_to feeling_definitions_path
  end
end
