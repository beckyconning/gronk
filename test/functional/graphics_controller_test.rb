require 'test_helper'

class GraphicsControllerTest < ActionController::TestCase
  setup do
    @graphic = graphics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graphics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create graphic" do
    assert_difference('Graphic.count') do
      post :create, :graphic => @graphic.attributes
    end

    assert_redirected_to graphic_path(assigns(:graphic))
  end

  test "should show graphic" do
    get :show, :id => @graphic.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @graphic.to_param
    assert_response :success
  end

  test "should update graphic" do
    put :update, :id => @graphic.to_param, :graphic => @graphic.attributes
    assert_redirected_to graphic_path(assigns(:graphic))
  end

  test "should destroy graphic" do
    assert_difference('Graphic.count', -1) do
      delete :destroy, :id => @graphic.to_param
    end

    assert_redirected_to graphics_path
  end
end
