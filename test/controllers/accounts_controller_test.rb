require 'test_helper'

# Test the accounts controller
class AccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account = accounts(:account_debit)
  end

  test 'should get the index' do
    get accounts_url
    assert_response :success
  end

  test 'should get the new form' do
    get new_account_url
    assert_response :success
  end

  test 'should create an account' do
    assert_difference('Account.count') do
      post accounts_url, params: { account: { name: @account.name } }
    end

    assert_redirected_to accounts_path
  end

  test 'should show an account' do
    get account_url(@account)
    assert_response :success
  end

  test 'should get show the account edit page' do
    get edit_account_url(@account)
    assert_response :success
  end

  test 'should update an account' do
    patch account_url(@account), params: { account: { name: @account.name } }
    assert_redirected_to accounts_url
  end

  test 'should destroy an account' do
    assert_difference('Account.count', -1) do
      delete account_url(@account)
    end

    assert_redirected_to accounts_url
  end
end
