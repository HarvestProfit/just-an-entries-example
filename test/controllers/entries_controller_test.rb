require 'test_helper'

# Tests the entries controller
class EntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    accounts(:account_debit)
    accounts(:account_credit)
    @entry = entries(:entry_one)
  end

  test 'should get index' do
    get entries_url
    assert_response :success
  end

  test 'should get new' do
    get new_entry_url
    assert_response :success
  end

  test 'should create entry' do
    assert_difference('Entry.count') do
      post entries_url, params: {
        entry: {
          debit_account_id: @entry.debit_account_id,
          credit_account_id: @entry.credit_account_id,
          credit: @entry.credit,
          debit: @entry.debit,
          name: @entry.name
        }
      }
    end

    assert_redirected_to entries_url
  end

  test 'should show entry' do
    get entry_url(@entry)
    assert_response :success
  end

  test 'should get edit' do
    get edit_entry_url(@entry)
    assert_response :success
  end

  test 'should update entry' do
    patch entry_url(@entry), params: {
      entry: {
        debit_account_id: @entry.debit_account_id,
        credit_account_id: @entry.credit_account_id,
        credit: @entry.credit,
        debit: @entry.debit,
        name: @entry.name
      }
    }
    assert_redirected_to entries_url
  end

  test 'should destroy entry' do
    assert_difference('Entry.count', -1) do
      delete entry_url(@entry)
    end

    assert_redirected_to entries_url
  end
end
