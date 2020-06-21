class RemoveUnusedReferencesFromEntries < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :entries, :accounts, column: :debit_account_id
    remove_foreign_key :entries, :accounts, column: :credit_account_id
    remove_column :entries, :debit_account_id, :integer
    remove_column :entries, :credit_account_id, :integer
    remove_column :entries, :debit, :decimal
    remove_column :entries, :credit, :decimal
  end
end
