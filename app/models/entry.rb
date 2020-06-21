# Each individual entry
class Entry < ApplicationRecord
  has_many :entry_items, dependent: :destroy

  accepts_nested_attributes_for :entry_items

  after_create :set_entry_items

  attr_accessor :credit_account_id, :debit_account_id

  def set_entry_items
    entry_items.create!(type: 'EntryItems::Credit', account_id: credit_account_id, amount: amount)
    entry_items.create!(type: 'EntryItems::Debit', account_id: debit_account_id, amount: amount)
  end
end
