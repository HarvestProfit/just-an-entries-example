module EntryItems
  # Handles all things Credit
  class Credit < ::EntryItem
    def self.model_name
      EntryItem.model_name
    end

    def credit?
      true
    end
  end
end
