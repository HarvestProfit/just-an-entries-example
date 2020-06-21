require 'test_helper'

# Tests the account methods
class AccountTest < ActiveSupport::TestCase
  test 'account balances' do
    debit_account = accounts(:account_debit)
    credit_account = accounts(:account_credit)

    entry = entries(:entry_one)
    entry.debit_account = debit_account
    entry.credit_account = credit_account
    entry.save

    assert_equal(entry.debit, debit_account.balance)
  end
end
