module EntryItems
  # Handles all things Debit
  class Debit < ::EntryItem
    def self.model_name
      EntryItem.model_name
    end

    def debit?
      true
    end
  end
end
