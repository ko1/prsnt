require 'test_helper'

class PresentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:presents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create present" do
    assert_difference('Present.count') do
      post :create, :present => { }
    end

    assert_redirected_to present_path(assigns(:present))
  end

  test "should show present" do
    get :show, :id => presents(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => presents(:one).to_param
    assert_response :success
  end

  test "should update present" do
    put :update, :id => presents(:one).to_param, :present => { }
    assert_redirected_to present_path(assigns(:present))
  end

  test "should destroy present" do
    assert_difference('Present.count', -1) do
      delete :destroy, :id => presents(:one).to_param
    end

    assert_redirected_to presents_path
  end
end
