require 'test_helper'

class ViewpointsControllerTest < ActionController::TestCase
  setup do
    @viewpoint = viewpoints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:viewpoints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create viewpoint" do
    assert_difference('Viewpoint.count') do
      post :create, viewpoint: { content: @viewpoint.content, user_id: @viewpoint.user_id }
    end

    assert_redirected_to viewpoint_path(assigns(:viewpoint))
  end

  test "should show viewpoint" do
    get :show, id: @viewpoint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @viewpoint
    assert_response :success
  end

  test "should update viewpoint" do
    patch :update, id: @viewpoint, viewpoint: { content: @viewpoint.content, user_id: @viewpoint.user_id }
    assert_redirected_to viewpoint_path(assigns(:viewpoint))
  end

  test "should destroy viewpoint" do
    assert_difference('Viewpoint.count', -1) do
      delete :destroy, id: @viewpoint
    end

    assert_redirected_to viewpoints_path
  end
end
