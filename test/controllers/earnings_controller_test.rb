require 'test_helper'

class EarningsControllerTest < ActionController::TestCase
  setup do
    @earning = earnings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:earnings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create earning" do
    assert_difference('Earning.count') do
      post :create, earning: { certification_id: @earning.certification_id, company_id: @earning.company_id, end_year: @earning.end_year, start_year: @earning.start_year }
    end

    assert_redirected_to earning_path(assigns(:earning))
  end

  test "should show earning" do
    get :show, id: @earning
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @earning
    assert_response :success
  end

  test "should update earning" do
    patch :update, id: @earning, earning: { certification_id: @earning.certification_id, company_id: @earning.company_id, end_year: @earning.end_year, start_year: @earning.start_year }
    assert_redirected_to earning_path(assigns(:earning))
  end

  test "should destroy earning" do
    assert_difference('Earning.count', -1) do
      delete :destroy, id: @earning
    end

    assert_redirected_to earnings_path
  end
end
