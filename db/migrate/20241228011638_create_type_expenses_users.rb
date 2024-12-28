class CreateTypeExpensesUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :type_expenses_users do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
