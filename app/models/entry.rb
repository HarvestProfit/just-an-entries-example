# Each individual entry
class Entry < ApplicationRecord
  belongs_to :debit_account, class_name: '::Account', optional: true
  belongs_to :credit_account, class_name: '::Account', optional: true

  validates :credit, presence: true
  validates :debit, presence: true
  validate :entry_must_have_either_a_debit_or_credit_account

  def entry_must_have_either_a_debit_or_credit_account
    return unless debit_account_id.nil? && credit_account_id.nil?
    errors.add(:credit_account_id, 'must be set if there is no debit account')
    errors.add(:debit_account_id, 'must be set if there is no credit account')
  end
end
