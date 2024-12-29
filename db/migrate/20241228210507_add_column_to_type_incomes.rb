class AddColumnToTypeIncomes < ActiveRecord::Migration[6.1]
  def change
    add_column :type_incomes, :name_fr, :string
    add_column :type_incomes, :name_es, :string
  end
end
