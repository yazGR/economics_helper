class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :expensetable, polymorphic: true, null: false
      t.decimal :amount
      t.datetime :date
      t.string :note

      t.timestamps
    end
  end
end
