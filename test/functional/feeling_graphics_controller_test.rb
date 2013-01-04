require 'test_helper'

class FeelingGraphicsControllerTest < ActionController::TestCase
  setup do
    @feeling_graphic = feeling_graphics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feeling_graphics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feeling_graphic" do
    assert_difference('FeelingGraphic.count') do
      post :create, :feeling_graphic => @feeling_graphic.attributes
    end

    assert_redirected_to feeling_graphic_path(assigns(:feeling_graphic))
  end

  test "should show feeling_graphic" do
    get :show, :id => @feeling_graphic.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @feeling_graphic.to_param
    assert_response :success
  end

  test "should update feeling_graphic" do
    put :update, :id => @feeling_graphic.to_param, :feeling_graphic => @feeling_graphic.attributes
    assert_redirected_to feeling_graphic_path(assigns(:feeling_graphic))
  end

  test "should destroy feeling_graphic" do
    assert_difference('FeelingGraphic.count', -1) do
      delete :destroy, :id => @feeling_graphic.to_param
    end

    assert_redirected_to feeling_graphics_path
  end
end
