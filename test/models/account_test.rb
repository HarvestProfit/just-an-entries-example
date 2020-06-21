require 'test_helper'

# Tests the account methods
class AccountTest < ActiveSupport::TestCase
  test 'account balances' do
    debit_account = accounts(:account_debit)

    entry = entry_items(:entry_item_one)

    assert_equal(entry.amount, debit_account.balance)
  end
end
