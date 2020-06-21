class CreateEntryItems < ActiveRecord::Migration[6.0]
  def change
    create_table :entry_items do |t|
      t.references :entry, null: false, foreign_key: true
      t.references :account, foreign_key: true
      t.string :type
      t.decimal :amount

      t.timestamps
    end
  end
end
