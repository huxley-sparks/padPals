require 'test_helper'

class PalsControllerTest < ActionController::TestCase
  setup do
    @pal = pals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pal" do
    assert_difference('Pal.count') do
      post :create, :pal => @pal.attributes
    end

    assert_redirected_to pal_path(assigns(:pal))
  end

  test "should show pal" do
    get :show, :id => @pal.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pal.to_param
    assert_response :success
  end

  test "should update pal" do
    put :update, :id => @pal.to_param, :pal => @pal.attributes
    assert_redirected_to pal_path(assigns(:pal))
  end

  test "should destroy pal" do
    assert_difference('Pal.count', -1) do
      delete :destroy, :id => @pal.to_param
    end

    assert_redirected_to pals_path
  end
end
