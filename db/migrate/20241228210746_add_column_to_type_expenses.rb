class AddColumnToTypeExpenses < ActiveRecord::Migration[6.1]
  def change
    add_column :type_expenses, :name_fr, :string
    add_column :type_expenses, :name_es, :string
  end
end
