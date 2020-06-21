# Accounts group entries together
class Account < ApplicationRecord
  has_many :entry_items, dependent: :destroy
  has_many :entries, through: :entry_items

  def credit_total
    entry_items.where(type: 'EntryItems::Credit').sum(:amount)
  end

  def debit_total
    entry_items.where(type: 'EntryItems::Debit').sum(:amount)
  end

  def balance
    debit_total - credit_total
  end
end
