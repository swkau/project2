require 'test_helper'

class SupportCasesControllerTest < ActionController::TestCase
  setup do
    @support_case = support_cases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:support_cases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create support_case" do
    assert_difference('SupportCase.count') do
      post :create, support_case: { close_date: @support_case.close_date, desc: @support_case.desc, name: @support_case.name, solution: @support_case.solution, stage: @support_case.stage, status: @support_case.status }
    end

    assert_redirected_to support_case_path(assigns(:support_case))
  end

  test "should show support_case" do
    get :show, id: @support_case
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @support_case
    assert_response :success
  end

  test "should update support_case" do
    patch :update, id: @support_case, support_case: { close_date: @support_case.close_date, desc: @support_case.desc, name: @support_case.name, solution: @support_case.solution, stage: @support_case.stage, status: @support_case.status }
    assert_redirected_to support_case_path(assigns(:support_case))
  end

  test "should destroy support_case" do
    assert_difference('SupportCase.count', -1) do
      delete :destroy, id: @support_case
    end

    assert_redirected_to support_cases_path
  end
end
