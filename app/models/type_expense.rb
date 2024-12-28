class TypeExpense < ApplicationRecord
  has_many :poly_incomes, as: :expensetable 
end
