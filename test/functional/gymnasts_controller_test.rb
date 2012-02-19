require 'test_helper'

class GymnastsControllerTest < ActionController::TestCase
  setup do
    @gymnast = gymnasts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gymnasts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gymnast" do
    assert_difference('Gymnast.count') do
      post :create, :gymnast => @gymnast.attributes
    end

    assert_redirected_to gymnast_path(assigns(:gymnast))
  end

  test "should show gymnast" do
    get :show, :id => @gymnast
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @gymnast
    assert_response :success
  end

  test "should update gymnast" do
    put :update, :id => @gymnast, :gymnast => @gymnast.attributes
    assert_redirected_to gymnast_path(assigns(:gymnast))
  end

  test "should destroy gymnast" do
    assert_difference('Gymnast.count', -1) do
      delete :destroy, :id => @gymnast
    end

    assert_redirected_to gymnasts_path
  end
end
