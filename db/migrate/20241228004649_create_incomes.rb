class CreateIncomes < ActiveRecord::Migration[6.1]
  def change
    create_table :incomes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :incometable, polymorphic: true, null: false
      t.decimal :amount
      t.datetime :date
      t.string :note

      t.timestamps
    end
  end
end
