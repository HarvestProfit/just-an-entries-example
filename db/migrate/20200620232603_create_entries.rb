class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.integer :debit_account_id
      t.integer :credit_account_id
      t.string :name
      t.decimal :amount, default: 0.00, null: false
      t.decimal :debit, default: 0.00, null: false
      t.decimal :credit, default: 0.00, null: false
      t.date :date
      t.text :notes

      t.timestamps
    end
    add_foreign_key :entries, :accounts, column: :debit_account_id
    add_foreign_key :entries, :accounts, column: :credit_account_id
  end
end
