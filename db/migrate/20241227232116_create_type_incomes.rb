class CreateTypeIncomes < ActiveRecord::Migration[6.1]
  def change
    create_table :type_incomes do |t|
      t.string :name

      t.timestamps
    end
  end
end
