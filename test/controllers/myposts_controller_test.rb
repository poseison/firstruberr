require 'test_helper'

class MypostsControllerTest < ActionController::TestCase
  setup do
    @mypost = myposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mypost" do
    assert_difference('Mypost.count') do
      post :create, mypost: { mytext: @mypost.mytext }
    end

    assert_redirected_to mypost_path(assigns(:mypost))
  end

  test "should show mypost" do
    get :show, id: @mypost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mypost
    assert_response :success
  end

  test "should update mypost" do
    patch :update, id: @mypost, mypost: { mytext: @mypost.mytext }
    assert_redirected_to mypost_path(assigns(:mypost))
  end

  test "should destroy mypost" do
    assert_difference('Mypost.count', -1) do
      delete :destroy, id: @mypost
    end

    assert_redirected_to myposts_path
  end
end
