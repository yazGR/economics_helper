class TypeExpensesUser < ApplicationRecord
  belongs_to :user
  has_many :poly_incomes, as: :expensetable 
end
