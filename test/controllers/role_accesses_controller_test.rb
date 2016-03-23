require 'test_helper'

class RoleAccessesControllerTest < ActionController::TestCase
  setup do
    @role_access = role_accesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:role_accesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create role_access" do
    assert_difference('RoleAccess.count') do
      post :create, role_access: { account_c: @role_access.account_c, account_d: @role_access.account_d, account_r: @role_access.account_r, account_u: @role_access.account_u, case_c: @role_access.case_c, case_d: @role_access.case_d, case_r: @role_access.case_r, case_u: @role_access.case_u, contact_c: @role_access.contact_c, contact_d: @role_access.contact_d, contact_r: @role_access.contact_r, contact_u: @role_access.contact_u, lead_c: @role_access.lead_c, lead_d: @role_access.lead_d, lead_r: @role_access.lead_r, lead_u: @role_access.lead_u, name: @role_access.name, opportunity_c: @role_access.opportunity_c, opportunity_d: @role_access.opportunity_d, opportunity_r: @role_access.opportunity_r, opportunity_u: @role_access.opportunity_u }
    end

    assert_redirected_to role_access_path(assigns(:role_access))
  end

  test "should show role_access" do
    get :show, id: @role_access
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @role_access
    assert_response :success
  end

  test "should update role_access" do
    patch :update, id: @role_access, role_access: { account_c: @role_access.account_c, account_d: @role_access.account_d, account_r: @role_access.account_r, account_u: @role_access.account_u, case_c: @role_access.case_c, case_d: @role_access.case_d, case_r: @role_access.case_r, case_u: @role_access.case_u, contact_c: @role_access.contact_c, contact_d: @role_access.contact_d, contact_r: @role_access.contact_r, contact_u: @role_access.contact_u, lead_c: @role_access.lead_c, lead_d: @role_access.lead_d, lead_r: @role_access.lead_r, lead_u: @role_access.lead_u, name: @role_access.name, opportunity_c: @role_access.opportunity_c, opportunity_d: @role_access.opportunity_d, opportunity_r: @role_access.opportunity_r, opportunity_u: @role_access.opportunity_u }
    assert_redirected_to role_access_path(assigns(:role_access))
  end

  test "should destroy role_access" do
    assert_difference('RoleAccess.count', -1) do
      delete :destroy, id: @role_access
    end

    assert_redirected_to role_accesses_path
  end
end
