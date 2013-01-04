require 'test_helper'

class ItemDefinitionsControllerTest < ActionController::TestCase
  setup do
    @item_definition = item_definitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_definitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_definition" do
    assert_difference('ItemDefinition.count') do
      post :create, :item_definition => @item_definition.attributes
    end

    assert_redirected_to item_definition_path(assigns(:item_definition))
  end

  test "should show item_definition" do
    get :show, :id => @item_definition.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @item_definition.to_param
    assert_response :success
  end

  test "should update item_definition" do
    put :update, :id => @item_definition.to_param, :item_definition => @item_definition.attributes
    assert_redirected_to item_definition_path(assigns(:item_definition))
  end

  test "should destroy item_definition" do
    assert_difference('ItemDefinition.count', -1) do
      delete :destroy, :id => @item_definition.to_param
    end

    assert_redirected_to item_definitions_path
  end
end
