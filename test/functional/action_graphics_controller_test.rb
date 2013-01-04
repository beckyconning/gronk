require 'test_helper'

class ActionGraphicsControllerTest < ActionController::TestCase
  setup do
    @action_graphic = action_graphics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:action_graphics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create action_graphic" do
    assert_difference('ActionGraphic.count') do
      post :create, :action_graphic => @action_graphic.attributes
    end

    assert_redirected_to action_graphic_path(assigns(:action_graphic))
  end

  test "should show action_graphic" do
    get :show, :id => @action_graphic.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @action_graphic.to_param
    assert_response :success
  end

  test "should update action_graphic" do
    put :update, :id => @action_graphic.to_param, :action_graphic => @action_graphic.attributes
    assert_redirected_to action_graphic_path(assigns(:action_graphic))
  end

  test "should destroy action_graphic" do
    assert_difference('ActionGraphic.count', -1) do
      delete :destroy, :id => @action_graphic.to_param
    end

    assert_redirected_to action_graphics_path
  end
end
