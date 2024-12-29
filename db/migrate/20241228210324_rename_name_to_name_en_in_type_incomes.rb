class RenameNameToNameEnInTypeIncomes < ActiveRecord::Migration[6.1]
  def change
    rename_column :type_incomes, :name, :name_en
  end
end
