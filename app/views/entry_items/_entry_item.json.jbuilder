json.extract! entry_item, :id, :type, :amount, :account_id, :entry_id, :created_at, :updated_at
json.url entry_item_url(entry_item, format: :json)
