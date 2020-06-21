# Accounts group entries together
class Account < ApplicationRecord
  has_many :debits,
           inverse_of: :debit_account,
           dependent: :destroy,
           class_name: '::Entry',
           foreign_key: 'debit_account_id'
  has_many :credits,
           inverse_of: :credit_account,
           dependent: :destroy,
           class_name: '::Entry',
           foreign_key: 'credit_account_id'

  def credit_total
    credits.sum(:credit)
  end

  def debit_total
    debits.sum(:debit)
  end

  def balance
    debit_total - credit_total
  end

  def entries
    Entry.where(debit_account_id: id).or(
      Entry.where(credit_account_id: id)
    ).order(date: :desc)
  end
end
