require 'test_helper'

class ShitsControllerTest < ActionController::TestCase
  setup do
    @shit = shits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shit" do
    assert_difference('Shit.count') do
      post :create, shit: { content: @shit.content }
    end

    assert_redirected_to shit_path(assigns(:shit))
  end

  test "should show shit" do
    get :show, id: @shit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shit
    assert_response :success
  end

  test "should update shit" do
    patch :update, id: @shit, shit: { content: @shit.content }
    assert_redirected_to shit_path(assigns(:shit))
  end

  test "should destroy shit" do
    assert_difference('Shit.count', -1) do
      delete :destroy, id: @shit
    end

    assert_redirected_to shits_path
  end
end
