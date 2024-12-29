class RenameNameToNameEnInTypeExpenses < ActiveRecord::Migration[6.1]
  def change
    rename_column :type_expenses, :name, :name_en
  end
end
