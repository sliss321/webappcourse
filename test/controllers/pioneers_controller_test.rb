require 'test_helper'

class PioneersControllerTest < ActionController::TestCase
  setup do
    @pioneer = pioneers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pioneers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pioneer" do
    assert_difference('Pioneer.count') do
      post :create, pioneer: { first_name: @pioneer.first_name, last_name: @pioneer.last_name }
    end

    assert_redirected_to pioneer_path(assigns(:pioneer))
  end

  test "should show pioneer" do
    get :show, id: @pioneer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pioneer
    assert_response :success
  end

  test "should update pioneer" do
    patch :update, id: @pioneer, pioneer: { first_name: @pioneer.first_name, last_name: @pioneer.last_name }
    assert_redirected_to pioneer_path(assigns(:pioneer))
  end

  test "should destroy pioneer" do
    assert_difference('Pioneer.count', -1) do
      delete :destroy, id: @pioneer
    end

    assert_redirected_to pioneers_path
  end
end
