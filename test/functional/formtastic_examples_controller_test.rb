require 'test_helper'

class FormtasticExamplesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formtastic_examples)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create formtastic_example" do
    assert_difference('FormtasticExample.count') do
      post :create, :formtastic_example => { }
    end

    assert_redirected_to formtastic_example_path(assigns(:formtastic_example))
  end

  test "should show formtastic_example" do
    get :show, :id => formtastic_examples(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => formtastic_examples(:one).to_param
    assert_response :success
  end

  test "should update formtastic_example" do
    put :update, :id => formtastic_examples(:one).to_param, :formtastic_example => { }
    assert_redirected_to formtastic_example_path(assigns(:formtastic_example))
  end

  test "should destroy formtastic_example" do
    assert_difference('FormtasticExample.count', -1) do
      delete :destroy, :id => formtastic_examples(:one).to_param
    end

    assert_redirected_to formtastic_examples_path
  end
end
