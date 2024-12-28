class AddPaymentMetodeToExpenses < ActiveRecord::Migration[6.1]
  def change
    add_reference :expenses, :payment_method, foreign_key: true
  end
end
