class EntryItem < ApplicationRecord
  belongs_to :entry
  belongs_to :account, optional: true, touch: true

  def credit?
    false
  end

  def debit?
    false
  end
end
