require 'test_helper'

class PackagingTypesControllerTest < ActionController::TestCase
  setup do
    @packaging_type = packaging_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:packaging_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create packaging_type" do
    assert_difference('PackagingType.count') do
      post :create, packaging_type: { title: @packaging_type.title }
    end

    assert_redirected_to packaging_type_path(assigns(:packaging_type))
  end

  test "should show packaging_type" do
    get :show, id: @packaging_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @packaging_type
    assert_response :success
  end

  test "should update packaging_type" do
    patch :update, id: @packaging_type, packaging_type: { title: @packaging_type.title }
    assert_redirected_to packaging_type_path(assigns(:packaging_type))
  end

  test "should destroy packaging_type" do
    assert_difference('PackagingType.count', -1) do
      delete :destroy, id: @packaging_type
    end

    assert_redirected_to packaging_types_path
  end
end
