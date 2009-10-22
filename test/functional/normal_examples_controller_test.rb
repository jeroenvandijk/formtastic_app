require 'test_helper'

class NormalExamplesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:normal_examples)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create normal_example" do
    assert_difference('NormalExample.count') do
      post :create, :normal_example => { }
    end

    assert_redirected_to normal_example_path(assigns(:normal_example))
  end

  test "should show normal_example" do
    get :show, :id => normal_examples(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => normal_examples(:one).to_param
    assert_response :success
  end

  test "should update normal_example" do
    put :update, :id => normal_examples(:one).to_param, :normal_example => { }
    assert_redirected_to normal_example_path(assigns(:normal_example))
  end

  test "should destroy normal_example" do
    assert_difference('NormalExample.count', -1) do
      delete :destroy, :id => normal_examples(:one).to_param
    end

    assert_redirected_to normal_examples_path
  end
end
