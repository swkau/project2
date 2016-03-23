require 'test_helper'

class AccountsControllerTest < ActionController::TestCase
  setup do
    @account = accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account" do
    assert_difference('Account.count') do
      post :create, account: { company_address1: @account.company_address1, company_address2: @account.company_address2, company_country: @account.company_country, company_email: @account.company_email, company_fax: @account.company_fax, company_phone: @account.company_phone, company_size: @account.company_size, company_state: @account.company_state, desc: @account.desc, industry: @account.industry, name: @account.name, relationship_type: @account.relationship_type, status: @account.status }
    end

    assert_redirected_to account_path(assigns(:account))
  end

  test "should show account" do
    get :show, id: @account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @account
    assert_response :success
  end

  test "should update account" do
    patch :update, id: @account, account: { company_address1: @account.company_address1, company_address2: @account.company_address2, company_country: @account.company_country, company_email: @account.company_email, company_fax: @account.company_fax, company_phone: @account.company_phone, company_size: @account.company_size, company_state: @account.company_state, desc: @account.desc, industry: @account.industry, name: @account.name, relationship_type: @account.relationship_type, status: @account.status }
    assert_redirected_to account_path(assigns(:account))
  end

  test "should destroy account" do
    assert_difference('Account.count', -1) do
      delete :destroy, id: @account
    end

    assert_redirected_to accounts_path
  end
end
